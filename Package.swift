// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GetStreamActivityFeed",
    platforms: [
        .iOS(.v11), .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "GetStreamActivityFeed",
            targets: ["GetStreamActivityFeed"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sgammon/stream-swift", .branch("master")),
        .package(url: "https://github.com/kean/Nuke", .upToNextMajor(from: "10.0.0")),
        .package(url: "https://github.com/AliSoftware/Reusable.git", .upToNextMajor(from: "4.1.2")),
        .package(url: "https://github.com/SnapKit/SnapKit", .upToNextMajor(from: "5.6.0")),
    ],
    targets: [
        .target(
            name: "GetStreamActivityFeed",
            dependencies: [
                "Nuke",
                "Reusable",
                "SnapKit",
                .product(name: "GetStream", package: "stream-swift")
            ],
            path: "Sources/",
            resources: [
                .copy("Icons.xcassets"),
                .copy("Components/Open Graph/OpenGraphTableViewCell.xib"),
                .copy("Views/Collection View Cells/AddingImageCollectionViewCell.xib"),
                .copy("Views/Table View Cells/ActionUsersTableViewCell.xib"),
                .copy("Views/Table View Cells/CommentTableViewCell.xib"),
                .copy("Views/Table View Cells/NotificationTableViewCell.xib"),
                .copy("Views/Table View Cells/PaginationTableViewCell.xib"),
                .copy("Views/Table View Cells/PostActionsTableViewCell.xib"),
                .copy("Views/Table View Cells/PostAttachmentImagesTableViewCell.xib"),
                .copy("Views/Table View Cells/PostHeaderTableViewCell.xib"),
                .copy("Views/Table View Cells/SeparatorTableViewCell.xib"),
            ]
        ),
    ]
)
