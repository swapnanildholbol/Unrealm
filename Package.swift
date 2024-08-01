// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Unrealm",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "UnrealmObjC", targets: ["UnrealmObjC"]),
        .library(name: "Unrealm", targets: ["Unrealm", "UnrealmObjC"])
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-swift.git", from: "10.39.0"),
        .package(url: "https://github.com/wickwirew/Runtime.git", from: "2.2.7")
    ],
    targets: [
        .target(
            name: "UnrealmObjC",
            dependencies: ["RealmSwift"],
            path: "Unrealm/Classes/ObjC"
        ),
        .target(
            name: "Unrealm",
            dependencies: ["UnrealmObjC", "RealmSwift", "Runtime"],
            path: "Unrealm/Classes/Swift"
        )
    ],
    swiftLanguageVersions: [.v5]
)
