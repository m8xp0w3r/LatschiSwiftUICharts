//
//  LatschiBarChartRow.swift
//
//  Created by m8xp0w3r on 04.07.21.
//


import SwiftUI


/// View for a single bar chart row
struct LatschiBarChartRow: View {
    @State var latschiChartData: LatschiChartData
    @Binding var label: String
    public var multiplier: CGFloat

    var body: some View {
        VStack {
            Spacer()
            Text("\(latschiChartData.value, specifier: "%.1f") ")
                .font(.footnote)
                .rotationEffect(.degrees(-90))
                .offset(y: latschiChartData.value < 3.4 ? 0 : 35)
                .zIndex(1)
            RoundedRectangle(cornerRadius: 20)
                .fill(latschiChartData.color)
                .frame(width: 20, height: CGFloat(latschiChartData.value) * multiplier)
                .onTapGesture {
                    label = latschiChartData.label
                }
        }
    }
}

struct LatschiBarChartRow_Previews: PreviewProvider {
    @State static var label = "Label"
    static var previews: some View {
        LatschiBarChartRow(latschiChartData: LatschiChartData(label: "Test", value: 3.4, color: Color.red), label: $label, multiplier: CGFloat(10))
    }
}
