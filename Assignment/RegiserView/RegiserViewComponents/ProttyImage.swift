//
//  ProttyImage.swift
//  Assignment
//
//  Created by Yuan Cao on 2023/11/16.
//

import SwiftUI

struct ProttyImage: View {

    static let width: CGFloat = 188
    static let height: CGFloat = 160

    var body: some View {
        Image("protty")
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}

#Preview {
    ProttyImage()
}
