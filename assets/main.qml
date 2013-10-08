import bb.cascades 1.2

Page {
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

            // no location / media items found for given location id
            Label {
                // Localized text with the dynamic translation and locale updates support
                text: qsTr("The quick brown fox jumps over the lazy dog") + Retranslate.onLocaleOrLanguageChanged
                textStyle.base: SystemDefaults.TextStyles.BigText
                multiline: true
            }

            // no location / media items found for given location id
            Label {
                // Localized text with the dynamic translation and locale updates support
                text: qsTr("The quick brown fox jumps over the lazy dog") + Retranslate.onLocaleOrLanguageChanged
                textStyle.base: SystemDefaults.TextStyles.PrimaryText
                multiline: true
            }
        }
    }
}
