// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "MaterialComponentsiOS",
    platforms: [ .iOS(.v10) ],
    products: [
        .library(
            name: "MaterialComponents",
            targets: [
                "MaterialTextFields",
                "MaterialButtons",
                "MaterialShadowElevations",
                "MaterialBottomNavigation"
            ]
        )
    ],
    dependencies: [
        .package(name: "MDFTextAccessibility", url: "https://github.com/star2star/material-text-accessibility-ios", .branch("2.0.0-spm-beta")),
        .package(name: "MDFInternationalization", url: "https://github.com/star2star/material-internationalization-ios", .branch("2.0.1-spm-beta"))
    ],
    targets: [
        
        .target(
            name: "MaterialBottomNavigation",
            dependencies: [
                .target(name: "MaterialInk"),
                .target(name: "MaterialRipple"),
                .target(name: "MaterialPalettes"),
                .target(name: "MaterialElevation"),
                .target(name: "MaterialShadowElevations"),
                .target(name: "MaterialContainer"),
                "MDFInternationalization",
            ],
            path: "components/BottomNavigation/",
            exclude: [
                "docs",
                "examples",
                "tests",
                "README.md"
            ]
        ),
        
        .target(
            name: "MaterialAvailability",
            dependencies: [],
            path: "components/Availability/"
        ),
        
        .target(
            name: "MaterialColor",
            dependencies: [
                .target(name: "MaterialAvailability")
            ],
            path: "components/private/Color/",
            exclude: [
                "tests"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialColorScheme",
            dependencies: [
                .target(name: "MaterialColor")
            ],
            path: "components/schemes/Color/",
            exclude: [
                "tests",
                "docs",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialMath",
            dependencies: [],
            path: "components/private/Math/",
            exclude: [
                "tests"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialElevation",
            dependencies: [
                .target(name: "MaterialAvailability"),
                .target(name: "MaterialMath"),
                .target(name: "MaterialColor")
            ],
            path: "components/Elevation/",
            exclude: [
                "tests"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialInk",
            dependencies: [
                .target(name: "MaterialAvailability")
            ],
            path: "components/Ink",
            exclude: [
                "tests",
                "docs",
                "examples",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialAnimationTiming",
            dependencies: [],
            path: "components/AnimationTiming/",
            exclude: [
                "tests",
                "docs",
                "examples",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialRipple",
            dependencies: [
                .target(name: "MaterialAnimationTiming"),
                .target(name: "MaterialAvailability")
            ],
            path: "components/Ripple/",
            exclude: [
                "tests",
                "docs",
                "examples",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialShadowElevations",
            dependencies: [],
            path: "components/ShadowElevations/",
            exclude: [
                "tests",
                "docs",
                "examples",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialShadowLayer",
            dependencies: [
                .target(name: "MaterialShadowElevations")
            ],
            path: "components/ShadowLayer/",
            exclude: [
                "tests",
                "docs",
                "examples",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialShapes",
            dependencies: [
                .target(name: "MaterialShadowElevations"),
                .target(name: "MaterialShadowLayer"),
                .target(name: "MaterialColor")
            ],
            path: "components/Shapes/",
            exclude: [
                "tests",
                "docs",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialShapeLibrary",
            dependencies: [
                .target(name: "MaterialShapes")
            ],
            path: "components/ShapeLibrary/",
            exclude: [
                "tests",
                "docs",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialShape",
            dependencies: [
                .target(name: "MaterialShapes"),
                .target(name: "MaterialShapeLibrary")
            ],
            path: "components/schemes/Shape/",
            exclude: [
                "tests",
                "docs",
                "examples",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialApplication",
            dependencies: [],
            path: "components/private/Application/",
            exclude: [
                "tests"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialTypography",
            dependencies: [
                "MDFTextAccessibility",
                .target(name: "MaterialApplication"),
                .target(name: "MaterialMath")
            ],
            path: "components/Typography/",
            exclude: [
                "tests",
                "docs",
                "examples",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialTypographyScheme",
            dependencies: [
                .target(name: "MaterialTypography")
            ],
            path: "components/schemes/Typography/",
            exclude: [
                "tests",
                "docs",
                "examples",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        .target(
            name: "MaterialContainer",
            dependencies: [
                .target(name: "MaterialColorScheme"),
                .target(name: "MaterialShape"),
                .target(name: "MaterialTypographyScheme")
            ],
            path: "components/schemes/Container/",
            exclude: [
                "tests",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialButtons",
            dependencies: [
                .target(name: "MaterialElevation"),
                .target(name: "MaterialColorScheme"),
                .target(name: "MaterialInk"),
                .target(name: "MaterialRipple"),
                .target(name: "MaterialShadowElevations"),
                .target(name: "MaterialShape"),
                .target(name: "MaterialTypographyScheme"),
                "MDFInternationalization",
                .target(name: "MaterialContainer")
            ],
            path: "components/Buttons/",
            exclude: [
                "tests",
                "docs",
                "examples",
                "README.md"
            ]
        ),

        // TextFields
        .target(
            name: "MaterialPalettes",
            dependencies: [],
            path: "components/Palettes/",
            exclude: [
                "tests",
                "examples",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialTextFields",
            dependencies: [
                .target(name: "MaterialContainer"),
                .target(name: "MaterialPalettes"),
                "MDFInternationalization",
                .target(name: "MaterialElevation"),
                .target(name: "MaterialButtons")
            ],
            path: "components/TextFields/",
            exclude: [
                "tests",
                "docs",
                "examples",
                "styling",
                "README.md",
                "src/MaterialTextFields.bundle"
            ]
        ),
        
        
    ]
)
