//
//  ContentView.swift
//  TicketUI
//
//  Created by Sajal Kaushik on 10/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        VStack(alignment: .center) {
            Text("Your upcoming journey!")
                .padding(.top, 30)
            GeometryReader { geo in
                TicketView(geo: geo.size)
            }
            .padding()
            .navigationTitle("Train ticket")
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
