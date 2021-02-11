//
//  ContentView.swift
//  QuizApp
//
//  Created by Sajal Kaushik on 13/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 1
    let service = NetworkService()
    var body: some View {
        service.getPrimeMovies()
        return ZStack {
            Color.background.edgesIgnoringSafeArea(.all)
            VStack {
                TopBar(selectedTab: $selectedTab)
                Spacer()
                if selectedTab == 2 {
                    Matches()
                        .padding(.top, 10)
                } else if selectedTab == 1 {
                    SwipeView()
                    Spacer()
                    BottomBar()
                } else if selectedTab == 0 {
                    Home()
                }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
