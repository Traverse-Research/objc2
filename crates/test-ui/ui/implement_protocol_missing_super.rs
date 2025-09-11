//! Test that implementing certain traits like `NSURLSessionDelegate` requires
//! super protocols like `NSObjectProtocol` and `Send + Sync` to also be
//! implemented.
use objc2::{define_class, MainThreadOnly};
use objc2_foundation::{NSObject, NSURLSessionDelegate};

define_class!(
    #[unsafe(super(NSObject))]
    #[thread_kind = MainThreadOnly]
    struct CustomObject;

    unsafe impl NSURLSessionDelegate for CustomObject {}
);

fn main() {}
