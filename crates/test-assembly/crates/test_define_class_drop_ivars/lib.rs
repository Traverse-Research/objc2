//! Test assembly output of `define_class!`.
#![deny(unsafe_op_in_unsafe_fn)]
// Limit to Apple targets only, since we don't particularly care about GNUStep code-size for now.
#![cfg(target_vendor = "apple")]
// Limit to 64-bit since we don't do anything special on other targets, and the assembly files are _huge_.
#![cfg(target_pointer_width = "64")]
use core::ptr;

use objc2::rc::{Allocated, Retained};
use objc2::runtime::AnyClass;
use objc2::{define_class, msg_send, ClassType, DefinedClass};
use objc2_foundation::NSObject;

pub struct Ivars {
    obj: Retained<NSObject>,
    obj_option: Option<Retained<NSObject>>,
}

define_class!(
    #[no_mangle]
    #[unsafe(super(NSObject))]
    #[name = "DropIvars"]
    #[ivars = Ivars]
    pub struct DropIvars;

    impl DropIvars {
        #[export_name = "fn1_init"]
        #[unsafe(method_id(init))]
        fn init(this: Allocated<Self>) -> Option<Retained<Self>> {
            let this = this.set_ivars(Ivars {
                obj: NSObject::new(),
                obj_option: Some(NSObject::new()),
            });
            unsafe { msg_send![super(this), init] }
        }
    }
);

impl Drop for DropIvars {
    #[export_name = "fn2_drop"]
    #[inline(never)]
    fn drop(&mut self) {
        std::hint::black_box(());
    }
}

impl DropIvars {
    #[export_name = "fn3_access_class"]
    pub fn access_class() -> &'static AnyClass {
        Self::class()
    }

    #[export_name = "fn3_access_ivars"]
    pub fn access_drop_ivars(&self) -> (*const NSObject, *const NSObject) {
        (
            Retained::as_ptr(&self.ivars().obj),
            self.ivars()
                .obj_option
                .as_ref()
                .map(Retained::as_ptr)
                .unwrap_or_else(ptr::null),
        )
    }
}
