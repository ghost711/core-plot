//#import "SpmImporter.h"
#if TARGET_OS_SIMULATOR || TARGET_OS_IOS
    #import <Foundation/Foundation.h>
    #import <UIKit/UIKit.h>
#else
    //#import <Foundation/Foundation.h> // Added 2020-9-7 JM
    #import <Cocoa/Cocoa.h>
    #import "CPTDecimalNumberValueTransformer.h"
    #ifndef MAC_OS_X_VERSION_10_6
    #define MAC_OS_X_VERSION_10_6 1060
    #endif
    #ifndef MAC_OS_X_VERSION_10_7
    #define MAC_OS_X_VERSION_10_7 1070
    #endif
    #ifndef MAC_OS_X_VERSION_10_8
    #define MAC_OS_X_VERSION_10_8 1080
    #endif
#endif

#import "CPTAnnotation.h"
#import "CPTLayer.h"

@interface CPTAnnotationHostLayer : CPTLayer

@property (nonatomic, readonly, nonnull) CPTAnnotationArray *annotations;

/// @name Annotations
/// @{
-(void)addAnnotation:(nullable CPTAnnotation *)annotation;
-(void)removeAnnotation:(nullable CPTAnnotation *)annotation;
-(void)removeAllAnnotations;
/// @}

@end
