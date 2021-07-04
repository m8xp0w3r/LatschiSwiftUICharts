//
//  LatschiLineChartView.swift
//
//  Created by m8xp0w3r on 04.07.21.
//

import SwiftUI

@available(iOS 13.0.0, *)
@available(macOS 10.15.0, *)
struct LatschiBarChartView: View {
    @State var label: String
    public var multiplier: CGFloat
    public var data: [LatschiChartData]
    
    init(label: String, data: [LatschiChartData], multiplier: CGFloat = 10) {
        self.label = label
        self.data = data
        self.multiplier = multiplier
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text(label)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(data) { entry in
                        VStack {
                            Spacer()
                            Text("\(entry.value, specifier: "%.1f") ")
                                .font(.footnote)
                                .rotationEffect(.degrees(-90))
                                .offset(y: entry.value < 2.4 ? 0 : 35)
                                .zIndex(1)
                            RoundedRectangle(cornerRadius: 20)
                                .fill(entry.color)
                                .frame(width: 20, height: CGFloat(entry.value) * multiplier)
                                .onTapGesture {
                                    label = entry.label
                                }
                        }
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
        LatschiBarChartView(label: "Test", data: getData())
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
