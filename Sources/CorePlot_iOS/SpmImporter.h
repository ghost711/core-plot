//
//  SpmImporter.h
//  CorePlot
//
//  Created by Jon Mitts on 9/8/20.
//

/** Takes the place of the pch for Swift Package Manager. */

#ifdef __OBJC__
    #import <TargetConditionals.h>          //@import Darwin.TargetConditionals;

    #if TARGET_OS_SIMULATOR || TARGET_OS_IPHONE || TARGET_OS_TV
        #import <Foundation/Foundation.h>   //@import Foundation;
        #import <UIKit/UIKit.h>             //@import UIKit;
    #else
        #import <Cocoa/Cocoa.h>             //@import Cocoa;
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
#endif

