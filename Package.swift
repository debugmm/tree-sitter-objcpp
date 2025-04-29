// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterObjCPP",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterObjCPP", targets: ["TreeSitterObjCPP"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterObjCPP",
                path: ".",
                sources: [
                    "src/parser.c",
                    // NOTE: if your language has an external scanner, add it here.
                    "src/scanner.c",
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ],
    cLanguageStandard: .c11
)
