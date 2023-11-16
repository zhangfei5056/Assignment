//
//  TopTitleView.swift
//  Assignment
//
//  Created by Yuan Cao on 2023/11/16.
//

import SwiftUI

struct TopTitleView: View {

    static let defaultFontSize: CGFloat = 36
    static let defaultTitle: String = "Hello \nSpeakBUDDY "
    
    var title: String = Self.defaultTitle
    var fontSize: CGFloat = TopTitleView.defaultFontSize

    var body: some View {
        Text(title)
            .font(.system(size: fontSize))
            .bold()
            .multilineTextAlignment(.center)
            .foregroundColor(Color(red: 0.2, green: 0.21, blue: 0.22))
    }
}

#Preview {
    TopTitleView()
}
