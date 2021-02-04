//
//  Glassmorphic Card.swift
//  Visiting Card
//
//  Created by Sajal Kaushik on 23/01/21.
//

import SwiftUI

struct Glassmorphic_Card: View {
    @State private var angle: Double = 0
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)).ignoresSafeArea()
            Circle()
                .fill(Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)))
                .frame(width: 150)
                .offset(x: -110, y: -75)
            Circle()
                .fill(Color(#colorLiteral(red: 0.8315098882, green: 0.4692500234, blue: 0.4334812164, alpha: 1)))
                .frame(width: 150)
                .offset(x: 110, y: 75)
            VisitingCard()
                .padding(.horizontal, 15)
                .onTapGesture(count: 1, perform: {
                    withAnimation {
                        angle += 180
                    }
                })
                .rotation3DEffect(
                    .degrees(angle),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                )
                .animation(.interpolatingSpring(stiffness: 80, damping: 20))
        }
    }
}

struct Glassmorphic_Card_Previews: PreviewProvider {
    static var previews: some View {
        Glassmorphic_Card()
            //.previewLayout(.sizeThatFits)
    }
}


struct VisitingCard: View {
    
    var body: some View {
        VStack(alignment: .center) {
            Image("SK")
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .padding(.top, 0)
            Text("Sajal Kaushik")
                .font(.title2)
                .fontWeight(.light)
            Text("iOS Developer")
                .font(.caption)
                .fontWeight(.light)
            VStack(spacing: 6) {
                HStack {
                   Image(systemName: "phone")
                    Spacer()
                    Text("+91-9457838301")
                        .font(.caption)
                        .fontWeight(.thin)
                }
                HStack {
                   Image(systemName: "mail")
                    Spacer()
                    Text("mail2SajalKaushik@gmail.com")
                        .font(.caption)
                        .fontWeight(.thin)
                }
                HStack {
                   Image(systemName: "mappin.and.ellipse")
                    Spacer()
                    Text("Delhi")
                        .font(.caption)
                        .fontWeight(.thin)
                }
            }
        }
        .padding(10)
    
        .background(LinearGradient(gradient: Gradient(colors: [Color.topWhite, Color.bottomWhite]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
        
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 1)
        )
        
       
    }
}
