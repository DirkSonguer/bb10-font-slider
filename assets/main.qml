import bb.cascades 1.2

Page {
    id: fontSliderPage

    property variant fontFamilyArray
    property int fontFamilyIndex: 0

    Container {
        layout: DockLayout {
        }

        // container for error / info messages
        Container {
            // layout definition
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
            leftPadding: 20
            rightPadding: 20

            // Headline text
            Label {
                id: headlineText
                text: qsTr("The quick brown fox jumps over the lazy dog")
                textStyle.base: SystemDefaults.TextStyles.BigText
                multiline: true
            }

            // Body text
            Label {
                id: bodyText
                text: qsTr("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.")
                textStyle.base: SystemDefaults.TextStyles.PrimaryText
                multiline: true
            }

            // Body numbers
            Label {
                id: bodyNumbers
                text: qsTr("0123 456 7890")
                textStyle.base: SystemDefaults.TextStyles.PrimaryText
                multiline: true
            }

            gestureHandlers: [
                TapHandler {
                    onTapped: {
                        if (fontFamilyIndex < (fontFamilyArray.length-1)) {
                            fontFamilyIndex += 1;                            
                        } else {
                            fontFamilyIndex = 0;
                        }
                        headlineText.text = qsTr("This is " + fontFamilyArray[fontFamilyIndex]);

                        headlineText.textStyle.fontFamily = fontFamilyArray[fontFamilyIndex];
                        bodyText.textStyle.fontFamily = fontFamilyArray[fontFamilyIndex];
                        bodyNumbers.textStyle.fontFamily = fontFamilyArray[fontFamilyIndex];
                    }
                }
            ]
        }
    }

    onCreationCompleted: {
        fontFamilyArray = new Array("Andale Mono", "Arial", "Arial Black", "Comic Sans MS", "Courier New", "DejaVu Sans", "DejaVu Sans Condensed", "DejaVu Sans Mono", "DejaVu Serif", "DejaVu Serif Condensed", "Georgia", "Impact", "MT Extra", "Slate Pro", "Symbol", "Tahoma", "Times New Roman", "Trebuchet MS", "Verdana", "Webdings", "Webdings 2", "Webdings 3");
        headlineText.text = qsTr("This is " + fontFamilyArray[fontFamilyIndex]);
        headlineText.textStyle.fontFamily = fontFamilyArray[fontFamilyIndex];
        bodyText.textStyle.fontFamily = fontFamilyArray[fontFamilyIndex];
        bodyNumbers.textStyle.fontFamily = fontFamilyArray[fontFamilyIndex];
    }
}
