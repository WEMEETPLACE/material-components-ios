// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "MaterialComponentsiOS",
    platforms: [ .iOS(.v9) ],
    products: [
        .library(
            name: "MaterialComponents",
            targets: [
                "MaterialAnimationTiming",
                "MaterialAppBar",
                "MaterialAvailability",
                "MaterialBottomNavigation",
                "MaterialBottomSheet",
                "MaterialButtonBar",
                "MaterialButtons",
                "MaterialChips",
                "MaterialElevation",
                "MaterialFlexibleHeader",
                "MaterialHeaderStackView",
                "MaterialInk",
                "MaterialNavigationBar",
                "MaterialNavigationDrawer",
                "MaterialPalettes",
                "MaterialRipple",
                "MaterialColorScheme",
                "MaterialContainer",
                "MaterialShape",
                "MaterialTypographyScheme",
                "MaterialShadow",
                "MaterialShadowElevations",
                "MaterialShadowLayer",
                "MaterialShapeLibrary",
                "MaterialShapes",
                "MaterialTextFields",
                "MaterialTypography"
            ]
        )
    ],
    dependencies: [
        .package(name: "MDFTextAccessibility", url: "https://github.com/star2star/material-text-accessibility-ios", .branch("2.0.1-spm-beta")),
        .package(name: "MDFInternationalization", url: "https://github.com/star2star/material-internationalization-ios", .branch("2.0.1-spm-beta"))
    ],
    targets: [
        // MARK: - AnimationTiming
        .target(
            name: "MaterialAnimationTiming",
            dependencies: [],
            path: "components/AnimationTiming/src",
            publicHeadersPath: "."
        ),

        // MARK: - AppBar
        .target(
            name: "MaterialAppBar",
            dependencies: [
                "MaterialContainer",
                "MaterialFlexibleHeader",
                "MaterialHeaderStackView",
                "MaterialNavigationBar",
                "MaterialIcons+ic_arrow_back",
                "MDFInternationalization",
                "MDFTextAccessibility",
            ],
            path: "components/AppBar/src",
            resources: [
                .copy("MaterialAppBar.bundle")
            ],
            publicHeadersPath: "."
        ),

        // MARK: - Availability
        .target(
            name: "MaterialAvailability",
            dependencies: [],
            path: "components/Availability/src",
            publicHeadersPath: "."
        ),

        // MARK: - BottomNavigation
        .target(
            name: "MaterialBottomNavigation",
            dependencies: [
                "MaterialInk",
                "MaterialRipple",
                "MaterialPalettes",
                "MaterialElevation",
                "MaterialShadow",
                "MaterialShadowElevations",
                "MaterialContainer",
                "MDFInternationalization",
            ],
            path: "components/BottomNavigation/src",
            publicHeadersPath: "."
        ),

        // MARK: - BottomSheet
        .target(
            name: "MaterialBottomSheet",
            dependencies: [
                "MaterialElevation",
                "MaterialShadowElevations",
                "MaterialShapes",
                "MaterialShapeLibrary",
                "MaterialKeyboardWatcher",
                "MaterialShape",
            ],
            path: "components/BottomSheet/src",
            publicHeadersPath: "."
        ),

        // MARK: - ButtonBar
        .target(
            name: "MaterialButtonBar",
            dependencies: [
                "MaterialAvailability",
                "MDFInternationalization",
                "MaterialButtons",
                "MaterialInk"
            ],
            path: "components/ButtonBar/src",
            publicHeadersPath: "."
        ),

        // MARK: - Buttons
        .target(
            name: "MaterialButtons",
            dependencies: [
                "MaterialElevation",
                "MaterialColorScheme",
                "MaterialInk",
                "MaterialRipple",
                "MaterialShadow",
                "MaterialShadowElevations",
                "MaterialShape",
                "MaterialTypographyScheme",
                "MDFInternationalization",
                "MaterialContainer"
            ],
            path: "components/Buttons/src",
            publicHeadersPath: "."
        ),
        
        // MARK: - Chips
        .target(
            name: "MaterialChips",
            dependencies: [
                "MaterialElevation",
                "MaterialShapes",
                "MaterialTextFields"
            ],
            path: "components/Chips/src",
            publicHeadersPath: "."
        ),

        // MARK: - Elevation
        .target(
            name: "MaterialElevation",
            dependencies: [
                "MaterialAvailability",
                "MaterialMath",
                "MaterialColor"
            ],
            path: "components/Elevation/src",
            publicHeadersPath: "."
        ),

        // MARK: - FlexibleHeader
        .target(
            name: "MaterialFlexibleHeader",
            dependencies: [
                "MaterialElevation",
                "MaterialApplication",
                "MaterialShadowElevations",
                "MaterialUIMetrics",
                "MDFTextAccessibility"
            ],
            path: "components/FlexibleHeader/src",
            publicHeadersPath: "."
        ),

        // MARK: - HeaderStackView
        .target(
            name: "MaterialHeaderStackView",
            path: "components/HeaderStackView/src",
            publicHeadersPath: "."
        ),

        // MARK: - Ink
        .target(
            name: "MaterialInk",
            dependencies: [
                "MaterialAvailability"
            ],
            path: "components/Ink/src",
            publicHeadersPath: "."
        ),

        // MARK: - NavigationBar
        .target(
            name: "MaterialNavigationBar",
            dependencies: [
                "MaterialElevation",
                "MaterialTypographyScheme",
                "MaterialColorScheme",
                "MDFInternationalization",
                "MDFTextAccessibility",
                "MaterialButtonBar"
            ],
            path: "components/NavigationBar/src",
            publicHeadersPath: "."
        ),

        // MARK: - NavigationDrawer
        .target(
            name: "MaterialNavigationDrawer",
            dependencies: [
                "MaterialColorScheme",
                "MaterialElevation",
                "MaterialShadowElevations",
                "MaterialContainer",
                "MaterialUIMetrics",
                "MaterialPalettes",
            ],
            path: "components/NavigationDrawer/src",
            resources: [
                .copy("MaterialAppBar.bundle")
            ],
            publicHeadersPath: "."
        ),

        // MARK: - Palettes
        .target(
            name: "MaterialPalettes",
            path: "components/Palettes/src",
            publicHeadersPath: "."
        ),

        // MARK: - Private Application
        .target(
            name: "MaterialApplication",
            dependencies: [],
            path: "components/private/Application/src",
            publicHeadersPath: "."
        ),

        // MARK: - Private Color
        .target(
            name: "MaterialColor",
            dependencies: [
                "MaterialAvailability"
            ],
            path: "components/private/Color/src",
            publicHeadersPath: "."
        ),

        // MARK: - Private Icons
        .target(
            name: "MaterialIcons",
            path: "components/private/Icons/src",
            publicHeadersPath: "."
        ),
        
        .target(
            name: "MaterialIcons+ic_arrow_back",
            dependencies: [
                "MaterialIcons",
            ],
            path: "components/private/Icons/icons/ic_arrow_back/src",
            exclude: [
                "Info.plist"
            ],
            resources: [
                .copy("MaterialIcons_ic_arrow_back.xcassets")
            ],
            publicHeadersPath: "."
        ),

        // MARK: - Private KeyboardWatcher
        .target(
            name: "MaterialKeyboardWatcher",
            dependencies: [
                "MaterialApplication",
            ],
            path: "components/private/KeyboardWatcher/src",
            publicHeadersPath: "."
        ),

        // MARK: - Private Math
        .target(
            name: "MaterialMath",
            dependencies: [],
            path: "components/private/Math/src",
            publicHeadersPath: "."
        ),

        // MARK: - Private UIMetrics
        .target(
            name: "MaterialUIMetrics",
            dependencies: [
                "MaterialApplication"
            ],
            path: "components/private/UIMetrics/src",
            publicHeadersPath: "."
        ),

        // MARK: - Ripple
        .target(
            name: "MaterialRipple",
            dependencies: [
                "MaterialAnimationTiming",
                "MaterialAvailability"
            ],
            path: "components/Ripple/src",
            publicHeadersPath: "."
        ),

        // MARK: - Schemes Color
        .target(
            name: "MaterialColorScheme",
            dependencies: [
                "MaterialColor"
            ],
            path: "components/schemes/Color/src",
            publicHeadersPath: "."
        ),

        // MARK: - Schemes Container
        .target(
            name: "MaterialContainer",
            dependencies: [
                "MaterialColorScheme",
                "MaterialShape",
                "MaterialTypographyScheme"
            ],
            path: "components/schemes/Container/src",
            publicHeadersPath: "."
        ),

        // MARK: - Schemes Shape
        .target(
            name: "MaterialShape",
            dependencies: [
                "MaterialShapes",
                "MaterialShapeLibrary"
            ],
            path: "components/schemes/Shape/src",
            publicHeadersPath: "."
        ),

        // MARK: - Schemes Typography
        .target(
            name: "MaterialTypographyScheme",
            dependencies: [
                "MaterialTypography"
            ],
            path: "components/schemes/Typography/src",
            publicHeadersPath: "."
        ),

        // MARK: - Shadow
        .target(
            name: "MaterialShadow",
            dependencies: [
                "MaterialAvailability"
            ],
            path: "components/Shadow/src",
            publicHeadersPath: "."
        ),

        // MARK: - ShadowElevations
        .target(
            name: "MaterialShadowElevations",
            path: "components/ShadowElevations/src",
            publicHeadersPath: "."
        ),

        // MARK: - ShadowLayer
        .target(
            name: "MaterialShadowLayer",
            dependencies: [
                "MaterialShadowElevations"
            ],
            path: "components/ShadowLayer/src",
            publicHeadersPath: "."
        ),

        // MARK: - ShapeLibrary
        .target(
            name: "MaterialShapeLibrary",
            dependencies: [
                "MaterialShapes"
            ],
            path: "components/ShapeLibrary/src",
            publicHeadersPath: "."
        ),

        // MARK: - Shapes
        .target(
            name: "MaterialShapes",
            dependencies: [
                "MaterialShadowElevations",
                "MaterialShadowLayer",
                "MaterialColor"
            ],
            path: "components/Shapes/src",
            publicHeadersPath: "."
        ),

        // MARK: - TextFields
        .target(
            name: "MaterialTextFields",
            dependencies: [
                "MaterialContainer",
                "MaterialPalettes",
                "MDFInternationalization",
                "MaterialElevation",
                "MaterialButtons"
            ],
            path: "components/TextFields/src",
            exclude: [
                "MaterialTextFields.bundle"
            ],
            publicHeadersPath: "."
        ),

        // MARK: - Typography
        .target(
            name: "MaterialTypography",
            dependencies: [
                "MDFTextAccessibility",
                "MaterialApplication",
                "MaterialMath"
            ],
            path: "components/Typography/src",
            publicHeadersPath: "."
        ),
    ]
)
