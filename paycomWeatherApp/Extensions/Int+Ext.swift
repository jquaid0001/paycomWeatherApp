//
//  Int+Ext.swift
//  paycomWeatherApp
//
//  Created by Josh Quaid on 7/18/22.
//

import Foundation
import SwiftUI

extension Int {
    func getTempColor() -> Color {
        switch self {
        case 75...:
            return .red
        case 50 ..< 75:
            return .orange
        case 30 ..< 50:
            return .yellow
        case 0 ..< 30:
            return .blue
        default:
            return .white
        }
    }
}
