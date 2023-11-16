//
//  GradientBackgroundModifier.swift
//  Assignment
//
//  Created by Yuan Cao on 2023/11/16.
//

import SwiftUI

struct GradientBackgroundModifier: ViewModifier {

    var startColor: Color = Color(red: 0.84, green: 0.82, blue: 1)
    var endColor: Color = .white.opacity(0)
    var startPoint: UnitPoint = .topLeading
    var endPoint: UnitPoint = .bottomTrailing

    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(
                    stops: [
                        Gradient.Stop(color: startColor, location: 0.00),
                        Gradient.Stop(color: endColor, location: 1.00),
                    ],
                    startPoint: startPoint,
                    endPoint: endPoint
                )
                .edgesIgnoringSafeArea(.all)
            )
    }
}
