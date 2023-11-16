//
//  UIDeviceExtensions.swift
//  Assignment
//
//  Created by Yuan Cao on 2023/11/16.
//

import UIKit

extension UIDevice {
    static var isIPad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }

    static var isIPhone: Bool {
        UIDevice.current.userInterfaceIdiom == .phone
    }
}
