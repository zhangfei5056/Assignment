//
//  RegisterButton.swift
//  Assignment
//
//  Created by Yuan Cao on 2023/11/16.
//

import SwiftUI

struct RegisterButton: View {

    static let defaultTitle: String = "プランに登録する"
    @State var buttonText: String = Self.defaultTitle

    var body: some View {
        Button(action: {
            print("\(buttonText) Button tapped!")
        }) {
            Text(buttonText)
                .foregroundColor(.white)
                .font(.headline)
                .frame(maxWidth: .infinity, maxHeight: 56)
                .background(
                    RoundedRectangle(cornerRadius: 28)
                        .fill(Color(red: 0.23, green: 0.65, blue: 1))
                        .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)

                )
                .overlay(
                    RoundedRectangle(cornerRadius: 28)
                        .inset(by: 0.5)
                        .stroke(.white, lineWidth: 1)

                )
        }
    }
}

#Preview {
    RegisterButton()
}
