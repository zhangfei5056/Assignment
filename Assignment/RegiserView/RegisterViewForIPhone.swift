//
//  RegisterViewForIPhone.swift
//  Assignment
//
//  Created by Yuan Cao on 2023/11/16.
//

import SwiftUI


struct RegisterViewForIPhone: View {
    var body: some View {
        ZStack {
            VStack {
                // Close Button
                CloseButton()
                Spacer()

                // Title
                TopTitleView()
                Spacer()

                ZStack(alignment: .topLeading) {
                    // Chart View
                    BarChartView()

                    // Protty Image
                    ProttyImage()
                        .frame(width: ProttyImage.width, height: ProttyImage.height)
                        .offset(x: -30, y: -30)
                }
                .padding(.horizontal, 40)

                Spacer()

                // Subtitle
                VStack {
                    AboutTitleView()
                    RaisingLevelGradientTitleView()
                }

                // Button
                RegisterButton()
                Spacer()
            }
            .padding(.horizontal, 20)
        }
        .gradientBackgroundModifier()
    }
}

#Preview {
    if UIDevice.isIPhone {
        RegisterViewForIPhone()
    } else {
        RegisterViewForIPad()
    }
}
