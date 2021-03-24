// swift-tools-version:5.3
import PackageDescription


let package = Package(
	name: "Helper",
	platforms: [.iOS(.v10), .macOS(.v10_12), .tvOS(.v10), .watchOS(.v6)],
	products: [
		.library(
			name: "Helper",
			targets: ["Helper"]
		)
	],
	targets: [
		.target(
			name: "Helper",
			dependencies: [],
			path: "Sources"
		)
	]
)
