//
//  RaisingLevelTitleView.swift
//  Assignment
//
//  Created by Yuan Cao on 2023/11/16.
//

import SwiftUI

struct RaisingLevelGradientTitleView: View {

    static let defaultTitle: String = "レベルアップ"
    static let defaultFontSize: CGFloat = 30

    var title: String = Self.defaultTitle
    var fontSize: CGFloat = Self.defaultFontSize
    var startColor: Color = Color(red: 0.43, green: 0.83, blue: 1)
    var endColor: Color = Color(red: 0, green: 0.46, blue: 1)
    var startPoint: UnitPoint = .top
    var endPoint: UnitPoint = .bottom

    var body: some View {
        Text(title)
            .font(.system(size: fontSize, weight: .bold))
            .multilineTextAlignment(.center)
            .foregroundStyle(
                LinearGradient(
                    colors: [
                        startColor,
                        endColor,
                    ],
                    startPoint: startPoint,
                    endPoint: endPoint
                )
            )
    }
}

#Preview {
    RaisingLevelGradientTitleView()
}
