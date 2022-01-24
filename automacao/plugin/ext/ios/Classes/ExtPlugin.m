#import "ExtPlugin.h"
#if __has_include(<ext/ext-Swift.h>)
#import <ext/ext-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ext-Swift.h"
#endif

@implementation ExtPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftExtPlugin registerWithRegistrar:registrar];
}
@end
