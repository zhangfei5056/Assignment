//
//  CloseButton.swift
//  Assignment
//
//  Created by Yuan Cao on 2023/11/16.
//

import SwiftUI

struct CloseButton: View {
    
    static let defaultButtonSize: CGFloat = 38
    static let defaultFontSize: CGFloat = 20
    @State var buttonText: String = "×"
    var buttonSize: CGFloat = Self.defaultButtonSize
    var fontSize: CGFloat = Self.defaultFontSize

    var body: some View {

        HStack {
            Spacer()
            Button(action: {
                print("\(buttonText) Button tapped!")
            }) {
                Text(buttonText)
                    .font(.system(size: fontSize, weight: .bold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: buttonSize, height: buttonSize, alignment: .center)
                    .background(Circle().fill(.white))
                    .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 2)
            }
        }
    }
}

#Preview {
    CloseButton(buttonText: "×")
}
