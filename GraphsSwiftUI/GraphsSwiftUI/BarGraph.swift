//
//  BbarGraph.swift
//  GraphsSwiftUI
//
//  Created by Sajal Kaushik on 04/11/20.
//  Copyright © 2020 Sajal Kaushik. All rights reserved.
//

import Foundation
import SwiftUI

struct BarGraph: View {
    let reports: [Report]
    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {
                ForEach(self.reports, id: \.year) { report in
                    BarView(report: report)
                }
            }
        }
    }
}

struct BarGraph_Previews: PreviewProvider {
    
    static var previews: some View {
        BarGraph(reports: Report.all())//.previewLayout(.sizeThatFits)
    }
}


struct BarView: View {
    let report: Report
    @State var showGraph = false
    var body: some View {
        
        let value = report.revenue/500
        let yValue = min(value*20, 500)
            
       return VStack {
        Text(String(format: "$%.2f", report.revenue))
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: showGraph ? CGFloat(yValue) : 0.0)
                .onAppear {
                    withAnimation(.easeInOut(duration: 1)) {
                        self.showGraph = true
                    }
        }
        Text(report.year)
        }
    }
}
