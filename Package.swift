// swift-tools-version:5.2
//
//  Package.swift
//  CorePlot
//
//  Created by Jon Mitts on 9/7/20.
//

import PackageDescription


//let package = Package(name: "CorePlot",
//    platforms: [.macOS(.v10_10), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)],
//    products: [
//        .library(name: "CorePlot_iOS", targets: ["CorePlot_iOS"]),
//        .library(name: "CorePlot_OSX", targets: ["CorePlot_OSX"])
//    ],
//    targets: [
//        .target(name: "CorePlot_iOS", path: "CorePlot_iOS",
//                                      publicHeadersPath: "CorePlot.h"),
//        .target(name: "CorePlot_OSX", path: "CorePlot_OSX",
//                                      publicHeadersPath: "CorePlot.h")
//    ]
//)

let package = Package(name: "CorePlot",
    platforms: [.macOS(.v10_10), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)],
    products: [
        .library(name: "CorePlot_iOS", targets: ["CorePlot_iOS"]),
        .library(name: "CorePlot_OSX", targets: ["CorePlot_OSX"])
    ],
    targets: [
        .target(name: "CorePlotCore", path: "framework/Source",
                publicHeadersPath: ""),
        .target(name: "CorePlot_iOS", dependencies: ["UIKit", "CorePlotCore"],
                path: "framework/iPhoneOnly", publicHeadersPath: ""),
        .target(name: "CorePlot_OSX", dependencies: ["Cocoa", "CorePlotCore"],
                path: "framework/MacOnly", publicHeadersPath: "")
    ]
)

/** https://github.com/ghost711/core-plot.git

 */
