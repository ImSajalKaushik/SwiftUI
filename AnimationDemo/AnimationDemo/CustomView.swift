//
//  CustomView.swift
//  AnimationDemo
//
//  Created by Sajal Kaushik on 19/11/20.
//

import SwiftUI

struct CustomView: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            NotificationView()
                .offset(y: showDetails ? -UIScreen.main.bounds.height/4 : -UIScreen.main.bounds.height)
                .animation(.interpolatingSpring(stiffness: 80, damping: 20))
            Button("Press Me") {
                showDetails.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { showDetails.toggle()
                }
            }
        }
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}
