// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ImportArt",
    targets: [
        .target(name: "ImportArt", dependencies: ["CLegacyCURL", "CLegacySqlite"]),
        .systemLibrary(
            name: "CLegacySqlite",
            pkgConfig: "sqlite3",
            providers: [.brew(["sqlite3"])]
        ),
        .systemLibrary(
            name: "CLegacyCURL",
            pkgConfig: "libcurl",
            providers: [.brew(["curl"])]
        )
    ]
)
