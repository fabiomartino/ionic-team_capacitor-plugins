// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorLocalNotifications",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorLocalNotifications",
            targets: ["LocalNotificationsPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "6.0.0")
    ],
    targets: [
        .target(
            name: "LocalNotificationsPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/LocalNotificationsPlugin"),
        .testTarget(
            name: "LocalNotificationsPluginTests",
            dependencies: ["LocalNotificationsPlugin"],
            path: "ios/Tests/LocalNotificationsPluginTests")
    ]
)
