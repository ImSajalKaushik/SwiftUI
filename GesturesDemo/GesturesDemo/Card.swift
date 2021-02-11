//
//  Card.swift
//  GesturesDemo
//
//  Created by Sajal Kaushik on 04/11/20.
//  Copyright © 2020 Sajal Kaushik. All rights reserved.
//

import SwiftUI

struct Card: View {
    let tapped : Bool
    @State private var zoom: CGFloat = 1
    var body: some View {
        VStack {
        Image("boys")
            .resizable()
            .scaleEffect(zoom)
            .frame(width: 300, height: 300)
            .gesture(MagnificationGesture().onChanged{ value in
                self.zoom = value.magnitude
            })
            
            .padding()
       Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(self.tapped ? Color.blue : Color.gray)
            .cornerRadius(20)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(tapped: false)
    }
}
