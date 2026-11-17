// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "IQTextInputViewNotification",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "IQTextInputViewNotification",
            targets: ["IQTextInputViewNotification"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/cdanielabr/IQKeyboardCore.git", from: "main"),
    ],
    targets: [
        .target(name: "IQTextInputViewNotification",
                dependencies: ["IQKeyboardCore"],
                path: "IQTextInputViewNotification",
                resources: [
                    .copy("Assets/PrivacyInfo.xcprivacy")
                ],
                linkerSettings: [
                    .linkedFramework("Combine"),
                    .linkedFramework("UIKit")
                ]
               )
    ]
)
