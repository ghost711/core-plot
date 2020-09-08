#import "SpmImporter.h"

#if TARGET_OS_SIMULATOR || TARGET_OS_IOS
    #import "CPTDefinitions.h"
    #import "CPTPlatformSpecificDefines.h"

    /// @file

    #if __cplusplus
    extern "C" {
    #endif

    /// @name Graphics Context Save Stack
    /// @{
    void CPTPushCGContext(__nonnull CGContextRef context);
    void CPTPopCGContext(void);

    /// @}

    /// @name Debugging
    /// @{
    CPTNativeImage *__nonnull CPTQuickLookImage(CGRect rect, __nonnull CPTQuickLookImageBlock renderBlock);

    /// @}

    #if __cplusplus
    }
    #endif
#else
    #import "CPTDefinitions.h"
    #import "CPTPlatformSpecificDefines.h"

    /// @file

    #if __cplusplus
    extern "C" {
    #endif

    /// @name Graphics Context Save Stack
    /// @{
    void CPTPushCGContext(__nonnull CGContextRef context);
    void CPTPopCGContext(void);

    /// @}

    /// @name Color Conversion
    /// @{
    __nonnull CGColorRef CPTCreateCGColorFromNSColor(NSColor *__nonnull nsColor) CF_RETURNS_RETAINED;
    CPTRGBAColor CPTRGBAColorFromNSColor(NSColor *__nonnull nsColor);

    /// @}

    /// @name Debugging
    /// @{
    CPTNativeImage *__nonnull CPTQuickLookImage(CGRect rect, __nonnull CPTQuickLookImageBlock renderBlock);

    /// @}

    #if __cplusplus
    }
    #endif
#endif
