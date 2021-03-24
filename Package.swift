// swift-tools-version:5.3
import PackageDescription


let package = Package(
	name: "Firebase",
	platforms: [.iOS(.v10), .macOS(.v10_12), .tvOS(.v10), .watchOS(.v6)],
	products: [
		.library(
			name: "FirebaseFirestore",
			targets: ["FirebaseFirestoreTarget"]
		)],
	targets: [
		.target(
			name: "FirebaseFirestoreTarget",
			dependencies: [.target(name: "FirebaseFirestore",
								   condition: .when(platforms: [.iOS, .tvOS, .macOS]))],
			path: "SwiftPM-PlatformExclude/FirebaseFirestoreWrap"
		),
		
		.target(
			name: "FirebaseFirestore",
			path: "Firestore",
			exclude: [
				"Swift/"
			],
			sources: [
				"Source/"
			],
			publicHeadersPath: "Source/Public",
			cSettings: [
				.headerSearchPath("../"),
				.headerSearchPath("Source/Public/FirebaseFirestore"),
			],
			linkerSettings: [
				.linkedFramework("SystemConfiguration", .when(platforms: [.iOS, .macOS, .tvOS])),
				.linkedFramework("UIKit", .when(platforms: [.iOS, .tvOS])),
			]
		),
		
		.target(
			name: "FirebaseFirestoreSwiftTarget",
			dependencies: [.target(name: "FirebaseFirestoreSwift",
								   condition: .when(platforms: [.iOS, .tvOS, .macOS]))],
			path: "SwiftPM-PlatformExclude/FirebaseFirestoreSwiftWrap"
		),
		
		.target(
			name: "FirebaseFirestoreSwift",
			dependencies: ["FirebaseFirestore"],
			path: "Firestore",
			exclude: [
				"Source/"
			],
			sources: [
				"Swift/Source/"
			]
		),
	]
)
