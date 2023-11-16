//
//  AboutTitleView.swift
//  Assignment
//
//  Created by Yuan Cao on 2023/11/16.
//

import SwiftUI

struct AboutTitleView: View {

    static let defaultTitle: String = "スピークバディで"
    static let defaultFontSize: CGFloat = 20

    var title: String = Self.defaultTitle
    var fontSize: CGFloat = Self.defaultFontSize

    var body: some View {
        Text(title)
            .font(.system(size: fontSize, weight: .bold))
            .multilineTextAlignment(.center)
            .foregroundColor(Color(red: 0.2, green: 0.21, blue: 0.22))
    }
}

#Preview {
    AboutTitleView()
}
