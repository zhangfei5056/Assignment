//
//  BarChartView.swift
//  Assignment
//
//  Created by Yuan Cao on 2023/11/16.
//

import SwiftUI
import Charts

struct BarMarkData: Identifiable {
    var id: String = UUID().uuidString
    let title: String
    let duration: Double
    var animate = false
}

struct BarChartView: View {

    @State var data: [BarMarkData] = [
        BarMarkData(title: "現在", duration: 66),
        BarMarkData(title: "3ヶ月", duration: 100),
        BarMarkData(title: "1年", duration: 220),
        BarMarkData(title: "2年", duration: 300),
    ]
    
    @State var fontSize: CGFloat = 12
    
    var body: some View {
        Chart(data) {
            BarMark(
                x: .value("title", $0.title),
                y: .value("duration", $0.animate ? $0.duration : 0)
            )
            .foregroundStyle(
                .linearGradient(
                    colors: [
                        Color(red: 0.12, green: 0.56, blue: 1),
                        Color(red: 0.35, green: 0.75, blue: 1)
                    ],
                    startPoint: .bottom,
                    endPoint: .top
                )
            )
            .cornerRadius(2)
        }
        .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.size.height * 0.38)
        // Hiden x axis and custom label.
        .chartXAxis {
            AxisMarks(values: data.map { $0.title }) { data in
                AxisValueLabel(centered: true)
                    .foregroundStyle(.black)
                    .font(.system(size: fontSize, weight: .bold))
                    .offset(y: 8)
            }
        }
        .chartYAxis(.hidden)
        .chartYScale(domain: 0...325)
        .onAppear {
            showChartAnimation()
        }
    }

    private func showChartAnimation() {
        for (index, _) in data.enumerated() {
            withAnimation(.easeInOut(duration: 0.5).delay(Double(index) * 0.2)) {
                data[index].animate = true
            }
        }
    }
}

#Preview {
    BarChartView()
}
