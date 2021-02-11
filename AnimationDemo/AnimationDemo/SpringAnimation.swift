//
//  SpringAnimation.swift
//  AnimationDemo
//
//  Created by Sajal Kaushik on 19/11/20.
//

import SwiftUI

struct SpringAnimation: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            Button("Press me to fly") {
                self.showDetails.toggle()
            }
            
            HStack {
                Text("🛫")
                    .font(.custom("Roboto", size: 100))
                    .offset(x: showDetails ? UIScreen.main.bounds.width - 100 : 0)
                    .animation(.interpolatingSpring(stiffness: 100, damping: 10))
                Spacer()
            }

        }
        
        
    }
}

struct SpringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SpringAnimation()
    }
}
