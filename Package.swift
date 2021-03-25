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
                "MaterialBottomNavigation",
                "MaterialAppBar",
                "MaterialNavigationDrawer",
                "MaterialBottomSheet",
            ]
        )
    ],
    dependencies: [
        .package(name: "MDFTextAccessibility", url: "https://github.com/star2star/material-text-accessibility-ios", .branch("2.0.0-spm-beta")),
        .package(name: "MDFInternationalization", url: "https://github.com/star2star/material-internationalization-ios", .branch("2.0.1-spm-beta"))
    ],
    targets: [
        .target(
            name: "MaterialBottomSheet",
            dependencies: [
                .target(name: "MaterialElevation"),
                .target(name: "MaterialShadowElevations"),
                .target(name: "MaterialShapes"),
                .target(name: "MaterialShapeLibrary"),
                .target(name: "MaterialKeyboardWatcher"),
                .target(name: "MaterialShape"),
            ],
            path: "components/BottomSheet/",
            exclude: [
                "docs",
                "examples",
                "tests",
                "README.md"
            ]
        ),
        .target(
            name: "MaterialNavigationDrawer",
            dependencies: [
                .target(name: "MaterialColorScheme"),
                .target(name: "MaterialElevation"),
                .target(name: "MaterialShadowElevations"),
                .target(name: "MaterialContainer"),
                .target(name: "MaterialUIMetrics"),
                .target(name: "MaterialPalettes"),
            ],
            path: "components/NavigationDrawer/",
            exclude: [
                "docs",
                "examples",
                "tests",
                "README.md"
            ],
            resources: [
                .copy("src/MaterialAppBar.bundle")
            ]
        ),
        
        .target(
            name: "MaterialAppBar",
            dependencies: [
                .target(name: "MaterialContainer"),
                .target(name: "MaterialFlexibleHeader"),
                .target(name: "MaterialHeaderStackView"),
                .target(name: "MaterialNavigationBar"),
                .target(name: "MaterialIcons"),
                "MDFInternationalization",
                "MDFTextAccessibility",
            ],
            path: "components/AppBar/",
            exclude: [
                "docs",
                "examples",
                "tests",
                "README.md"
            ],
            resources: [
                .copy("src/MaterialAppBar.bundle")
            ]
        ),
        
        .target(
            name: "MaterialIcons",
            dependencies: [
            ],
            path: "components/private/Icons/",
            exclude: [
                "tests",
                "README.md",
                "icons/ic_arrow_back/src/Info.plist",
                "icons/ic_arrow_back/src/Info.plist",
                "icons/ic_check/src/Info.plist",
                "icons/ic_check_circle/src/Info.plist",
                "icons/ic_chevron_right/src/Info.plist",
                "icons/ic_color_lens/src/Info.plist",
                "icons/ic_feedback/src/Info.plist",
                "icons/ic_help_outline/src/Info.plist",
                "icons/ic_info/src/Info.plist",
                "icons/ic_more_horiz/src/Info.plist",
                "icons/ic_radio_button_unchecked/src/Info.plist",
                "icons/ic_reorder/src/Info.plist",
                "icons/ic_settings/src/Info.plist",
            ],
            resources: [
                .copy("icons/ic_arrow_back/src/MaterialIcons_ic_arrow_back.xcassets"),
                .copy("icons/ic_check/src/MaterialIcons_ic_check.xcassets"),
                .copy("icons/ic_check_circle/src/MaterialIcons_ic_check_circle.xcassets"),
                .copy("icons/ic_chevron_right/src/MaterialIcons_ic_chevron_right.xcassets"),
                .copy("icons/ic_color_lens/src/MaterialIcons_ic_color_lens.xcassets"),
                .copy("icons/ic_feedback/src/MaterialIcons_ic_feedback.xcassets"),
                .copy("icons/ic_help_outline/src/MaterialIcons_ic_help_outline.xcassets"),
                .copy("icons/ic_info/src/MaterialIcons_ic_info.xcassets"),
                .copy("icons/ic_more_horiz/src/MaterialIcons_ic_more_horiz.xcassets"),
                .copy("icons/ic_radio_button_unchecked/src/MaterialIcons_ic_radio_button_unchecked.xcassets"),
                .copy("icons/ic_reorder/src/MaterialIcons_ic_reorder.xcassets"),
                .copy("icons/ic_settings/src/MaterialIcons_ic_settings.xcassets"),
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialNavigationBar",
            dependencies: [
                .target(name: "MaterialElevation"),
                .target(name: "MaterialTypographyScheme"),
                .target(name: "MaterialColorScheme"),
                "MDFInternationalization",
                "MDFTextAccessibility",
                .target(name: "MaterialButtonBar")
            ],
            path: "components/NavigationBar/",
            exclude: [
                "docs",
                "examples",
                "tests",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialButtonBar",
            dependencies: [
                .target(name: "MaterialAvailability"),
                "MDFInternationalization",
                .target(name: "MaterialButtons"),
                .target(name: "MaterialInk")
            ],
            path: "components/ButtonBar/",
            exclude: [
                "docs",
                "examples",
                "tests",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialHeaderStackView",
            dependencies: [
            ],
            path: "components/HeaderStackView/",
            exclude: [
                "docs",
                "tests",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialFlexibleHeader",
            dependencies: [
                .target(name: "MaterialElevation"),
                .target(name: "MaterialApplication"),
                .target(name: "MaterialShadowElevations"),
                .target(name: "MaterialUIMetrics"),
                "MDFTextAccessibility"
            ],
            path: "components/FlexibleHeader/",
            exclude: [
                "docs",
                "examples",
                "tests",
                "README.md"
            ],
            publicHeadersPath:"src"
        ),
        
        .target(
            name: "MaterialUIMetrics",
            dependencies: [
                .target(name: "MaterialApplication")
            ],
            path: "components/private/UIMetrics/",
            exclude: [
                "tests"
            ],
            publicHeadersPath:"src"
        ),
        
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
            name: "MaterialKeyboardWatcher",
            dependencies: [
                .target(name: "MaterialApplication"),
            ],
            path: "components/private/KeyboardWatcher/",
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
