//
//  CurrentDayExt.swift
//  paycomWeatherApp
//
//  Created by Josh Quaid on 7/18/22.
//

import Foundation
import SwiftUI

extension String {
    func getImageName() -> String {
        switch self {
        case "sunny":
            return "sun.max.fill"
        default:
            #warning("fix this to show a missing image")
            return "sun.min"
        }
    }
}
