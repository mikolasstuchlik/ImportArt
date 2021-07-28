// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ImportArt",
    targets: [
        .executableTarget(name: "ImportArt", dependencies: ["CSqliteCURL"]),
        .systemLibrary(
            name: "CSqliteCURL",
            pkgConfig: "libcurl sqlite3",
            providers: [.brew(["curl", "sqlite3"])]
        )
    ]
)
