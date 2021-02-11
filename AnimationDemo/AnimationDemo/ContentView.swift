//
//  ContentView.swift
//  AnimationDemo
//
//  Created by Sajal Kaushik on 19/11/20.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            Button("Press Me") {
                showDetails.toggle()
            }
            HStack {
                Text(!showDetails ? "Show Details" : "Hide Details")
                Image(systemName: "chevron.up.square")
                    .scaleEffect(showDetails ? 1 : 2)
                    .rotationEffect(.degrees(self.showDetails ? 180 : 0))
                    .animation(.default)
            }
            
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



