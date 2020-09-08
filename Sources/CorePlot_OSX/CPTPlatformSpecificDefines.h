/// @file

#import <TargetConditionals.h>

#if !TARGET_OS_SIMULATOR && !TARGET_OS_IPHONE 
typedef NSColor CPTNativeColor; ///< Platform-native color.
typedef NSImage CPTNativeImage; ///< Platform-native image format.
typedef NSEvent CPTNativeEvent; ///< Platform-native OS event.
typedef NSFont  CPTNativeFont;  ///< Platform-native font.
#endif
