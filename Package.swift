// swift-tools-version:5.2
//
//  Package.swift
//  CorePlot
//
//  Created by Jon Mitts on 9/7/20.
//

import PackageDescription


let package = Package(name: "CorePlot",
    platforms: [.macOS(.v10_10), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)],
    products: [
        .library(name: "CorePlot_iOS", targets: ["CorePlot_iOS"]),
        .library(name: "CorePlot_OSX", targets: ["CorePlot_OSX"])
    ],
    targets: [
        .target(name: "CorePlot_iOS", path: "Sources/CorePlot_iOS",
                publicHeadersPath: "Sources/CorePlot_iOS/include",
                cSettings: [.define("TARGET_OS_IPHONE", to: "1")]
        ),
        .target(name: "CorePlot_OSX", path: "Sources/CorePlot_OSX",
                publicHeadersPath: "Sources/CorePlot_OSX/include",
                cSettings: [.define("TARGET_OS_MACOS", to: "1")]
        )
    ]
)

//let package = Package(name: "CorePlot",
//    platforms: [.macOS(.v10_10), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)],
//    products: [
//        .library(name: "CorePlot_iOS", targets: ["CorePlot_iOS"]),
//        .library(name: "CorePlot_OSX", targets: ["CorePlot_OSX"])
//    ],
//    targets: [
//        .target(name: "CorePlotCore", path: "framework/Source",
//                publicHeadersPath: ""),
//        .target(name: "CorePlot_iOS", dependencies: ["CorePlotCore"],
//                path: "framework/iPhoneOnly", publicHeadersPath: ""),
//        .target(name: "CorePlot_OSX", dependencies: ["CorePlotCore"],
//                path: "framework/MacOnly", publicHeadersPath: "")
//    ]
//)

/** https://github.com/ghost711/core-plot.git
 Proper order:
 .target(name:dependencies:path:exclude:sources:publicHeadersPath:cSettings:
         cxxSettings:swiftSettings:linkerSettings:)
 
 */
