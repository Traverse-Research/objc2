//! Test assembly output of `define_class!`.
#![deny(unsafe_op_in_unsafe_fn)]
// Limit to Apple targets only, since we don't particularly care about GNUStep code-size for now.
#![cfg(target_vendor = "apple")]
// Limit to 64-bit since we don't do anything special on other targets, and the assembly files are _huge_.
#![cfg(target_pointer_width = "64")]

use objc2::rc::Retained;
use objc2::runtime::AnyClass;
use objc2::{define_class, msg_send, ClassType};
use objc2_foundation::{CopyingHelper, NSCopying, NSObject, NSObjectProtocol, NSZone};

define_class!(
    #[no_mangle]
    #[unsafe(super(NSObject))]
    #[name = "NoIvars"]
    pub struct NoIvars;

    impl NoIvars {
        #[export_name = "fn1_get_class"]
        #[unsafe(method(classMethod))]
        fn get_class() -> &'static AnyClass {
            Self::class()
        }

        #[export_name = "fn2_method_simple"]
        #[unsafe(method(method))]
        fn method_simple(&self) {}

        #[export_name = "fn3_method_bool"]
        #[unsafe(method(methodBool:))]
        fn method_bool(&self, val: bool) -> bool {
            !val
        }

        #[export_name = "fn4_method_retained"]
        #[unsafe(method_id(methodRetained))]
        fn method_retained(&self) -> Option<Retained<NSObject>> {
            unsafe { msg_send![Self::class(), new] }
        }

        // Test that `objc_autoreleaseReturnValue` is tail-called
        #[export_name = "fn5_method_retained_with_param"]
        #[unsafe(method_id(methodRetainedWithParam:))]
        fn method_retained_with_param(&self, param: bool) -> Option<Retained<NSObject>> {
            // Intentionally create this outside condition
            let obj = NSObject::new();
            if param {
                Some(NSObject::new())
            } else {
                Some(obj)
            }
        }
    }

    unsafe impl NSObjectProtocol for NoIvars {}

    unsafe impl NSCopying for NoIvars {
        #[export_name = "fn6_copyWithZone"]
        #[unsafe(method_id(copyWithZone:))]
        fn copy_with_zone(&self, _zone: *const NSZone) -> Option<Retained<Self>> {
            unsafe { msg_send![Self::class(), new] }
        }
    }
);

unsafe impl CopyingHelper for NoIvars {
    type Result = Self;
}
