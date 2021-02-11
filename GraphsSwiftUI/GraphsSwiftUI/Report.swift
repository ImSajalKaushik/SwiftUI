//
//  Report.swift
//  GraphsSwiftUI
//
//  Created by Sajal Kaushik on 04/11/20.
//  Copyright © 2020 Sajal Kaushik. All rights reserved.
//

import Foundation

struct Report: Hashable {
    let year: String
    let revenue: Double
}

extension Report {
    
    static func all() -> [Report] {
        return [Report(year: "2018", revenue: 3000),
                Report(year: "2019", revenue: 1000),
                Report(year: "2020", revenue: 2000)]
    }
}
