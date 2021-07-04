//
//  LatschiBarChartView.swift
//
//  Created by m8xp0w3r on 04.07.21.
//

import SwiftUI

@available(iOS 13.0.0, *)
@available(macOS 10.15.0, *)
public struct LatschiBarChartView: View {
    public var multiplier: CGFloat
    @State var label: String
    public var data: [LatschiChartData]
    
    public init(data: [LatschiChartData], label: String = "", multiplier: CGFloat = 10) {
        self.label = label
        self.data = data
        self.multiplier = multiplier
    }
    
    public var body: some View {
        VStack {
            Spacer()
            Text(label)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(data) { latschiChartData in
                        LatschiBarChartRow(latschiChartData: latschiChartData, label: $label, multiplier: multiplier)
                    }
                }
                .padding()
            }
        }
    }
}

@available(iOS 13.0, *)
struct LatschiBarChartView_Previews: PreviewProvider {
    
    static var previews: some View {
        LatschiBarChartView(data: getData(), label: "Test", multiplier: CGFloat(15))
    }
    
    static func getData() -> [LatschiChartData] {
        var data: [LatschiChartData] = []
        for n in 1...20 {
            data.append(LatschiChartData(label: "Test: \(n)", value: Double.random(in: 1...20), color: getRandomColor()))
        }
        return data
    }
    
    static func getRandomColor() -> Color {
        return Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
    }
}
