//
//  LatschiChartData.swift
//
//  Created by m8xp0w3r on 04.07.21.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
public struct LatschiChartData: Identifiable {
    public let id = UUID()
    var label: String
    var value: Double
    var color = Color.blue
    
    public init(label: String, value: Double) {
        self.label = label
        self.value = value
    }
    
    public init(label: String, value: Double, color: Color) {
        self.label = label
        self.value = value
        self.color = color
    }
}
