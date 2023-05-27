// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CredoLabFrameworks",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CredoLabFrameworks",
            targets: ["CredoLabFrameworks",
//                      "CredoAppMedia",
//                      "CredoAppMusic",
//                      "CredoAppCore",
//                      "CredoAppContacts",
//                      "CredoAppCalendarReminders",
//                      "CredoAppCalendarEvents"
                     ]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "CredoAppMusic", path: "./Sources/CredoAppMusic.xcframework"),
        .binaryTarget(name: "CredoAppMedia", path: "./Sources/CredoAppMedia.xcframework"),
        .binaryTarget(name: "CredoAppCore", path: "./Sources/CredoAppCore.xcframework"),
        .binaryTarget(name: "CredoAppContacts", path: "./Sources/CredoAppContacts.xcframework"),
        .binaryTarget(name: "CredoAppCalendarReminders", path: "./Sources/CredoAppCalendarReminders.xcframework"),
        .binaryTarget(name: "CredoAppCalendarEvents", path: "./Sources/CredoAppCalendarEvents.xcframework"),
        .target(
            name: "CredoLabFrameworks",
            dependencies: [
                .target(name: "CredoAppMedia"),
                .target(name: "CredoAppMusic"),
                .target(name: "CredoAppCore"),
                .target(name: "CredoAppContacts"),
                .target(name: "CredoAppCalendarReminders"),
                .target(name: "CredoAppCalendarEvents")
            ],
            path: "./Sources/")
    ]
)
