//
//  ContentView.swift
//  GesturesDemo
//
//  Created by Sajal Kaushik on 04/11/20.
//  Copyright © 2020 Sajal Kaushik. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var tapped = false
    @State private var draggedState = CGSize.zero
    @State private var rotationAngle: Double = .zero
        var body: some View {
        Card(tapped: self.tapped)
            .animation(.spring())
            .offset(y: draggedState.height)
            .rotationEffect(Angle(degrees: rotationAngle))
           
//            /// Rotation gesture
//            .gesture(RotationGesture().onChanged { value in
//                self.rotationAngle = value.degrees
//            })
            
            /// Drag Gesture Gesture
            .gesture(DragGesture().onChanged {  value in
                self.draggedState = value.translation
            }
            .onEnded { _ in
                self.draggedState = CGSize.zero
            })
            
            
            /// Tap Gesture
            .gesture(TapGesture(count: 1).onEnded({ () in
                self.tapped.toggle()
            }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
