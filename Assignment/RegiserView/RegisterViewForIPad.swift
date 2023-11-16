//
//  RegisterViewForIPhone.swift
//  Assignment
//
//  Created by Yuan Cao on 2023/11/16.
//

import SwiftUI

struct RegisterViewForIPad: View {
    var body: some View {
        ZStack {
            VStack {
                // Close Button
                CloseButton(
                    buttonSize: CloseButton.defaultButtonSize * 2,
                    fontSize: CloseButton.defaultFontSize * 2
                )
                .padding(.top, 60)
                Spacer()

                // Title
                TopTitleView(fontSize: TopTitleView.defaultFontSize * 1.8)
                Spacer()

                ZStack(alignment: .topLeading) {
                    // Chart View
                    BarChartView()

                    // Protty Image
                    ProttyImage()
                        .frame(
                            width: ProttyImage.width * 1.5,
                            height: ProttyImage.height * 1.5
                        )
                }
                Spacer()

                // Subtitle
                VStack {
                    AboutTitleView(fontSize: AboutTitleView.defaultFontSize * 2)
                    RaisingLevelGradientTitleView(
                        fontSize: RaisingLevelGradientTitleView.defaultFontSize * 2
                    )
                }

                // Button
                RegisterButton()
                    .padding(.bottom, 60)
            }
            .padding(.horizontal, 90)
        }
        .gradientBackgroundModifier()
    }
}

extension View {
    func gradientBackgroundModifier() -> some View {
        modifier(GradientBackgroundModifier())
    }
}

#Preview {
    if UIDevice.isIPhone {
        RegisterViewForIPhone()
    } else {
        RegisterViewForIPad()
    }
}
