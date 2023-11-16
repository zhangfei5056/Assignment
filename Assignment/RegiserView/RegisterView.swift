//
//  RegisterView.swift
//  Assignment
//
//  Created by Yuan Cao on 2023/11/16.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        if UIDevice.isIPhone {
            RegisterViewForIPhone()
        } else {
            RegisterViewForIPad()
        }
    }
}

#Preview {
    RegisterView()
}
