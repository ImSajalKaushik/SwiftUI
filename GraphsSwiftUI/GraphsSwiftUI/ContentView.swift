//
//  ContentView.swift
//  GraphsSwiftUI
//
//  Created by Sajal Kaushik on 04/11/20.
//  Copyright © 2020 Sajal Kaushik. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BarGraph(reports: Report.all())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
