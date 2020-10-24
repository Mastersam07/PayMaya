#import "PaymayaPlugin.h"
#if __has_include(<paymaya/paymaya-Swift.h>)
#import <paymaya/paymaya-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "paymaya-Swift.h"
#endif

@implementation PaymayaPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPaymayaPlugin registerWithRegistrar:registrar];
}
@end
