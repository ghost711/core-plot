// swift-tools-version:5.0
//
//  Package.swift
//  CorePlot
//
//  Created by Jon Mitts on 9/7/20.
//

import PackageDescription

let package = Package(name: "CorePlot",
                      platforms: [.macOS(.v10_10),
                                  .iOS(.v9),
                                  .tvOS(.v9),
                                  .watchOS(.v2)],
                      products: [.library(name: "CorePlot",
                                          targets: ["CorePlot"])],
                      targets: [.target(name: "CorePlot",
                                        path: ".")])
                      //targets: [.target(name: "CorePlot",
                      //                path: "CorePlot",
                      //                publicHeadersPath: "")])
