//
//  CardView.swift
//  QuizApp
//
//  Created by Sajal Kaushik on 13/01/21.
//

import SwiftUI

//struct CardView: View {
//
//    @State private var translation = CGSize.zero
//    @Binding var cardSize: CGSize
//    @Binding var user: User
//
//    private var thresholdPercentage: CGFloat = 0.5
//
//    init(size: CGSize) {
//        cardSize = size
//    }
//
//    private func getGesturePercentage(_ geometry: CGSize, from gesture: DragGesture.Value) -> CGFloat {
//        gesture.translation.width / cardSize.width
//    }
//
//
//    var body: some View {
//        ZStack {
//            Image(user.image)
//                .resizable()
//                .scaledToFill()
//                .frame(width: cardSize.width*0.8, height: cardSize.height*0.7,alignment: .center)
//                .clipped()
//            VStack {
//                Spacer()
//                Nameplate(user: user)
//            }
//
//        }
//        .frame(width: cardSize.width*0.8, height: cardSize.height*0.7,alignment: .center)
//        .cornerRadius(25)
//        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 15, y: 15)
//        .animation(.interactiveSpring())
//        .offset(x: translation.width, y: 0)
//        .rotationEffect(.degrees(Double(self.translation.width)/Double((cardSize.width))*25), anchor: .bottom)
//        .gesture(
//            DragGesture()
//                .onChanged { value in
//                    self.translation = value.translation
//                }
//                .onEnded({ value in
//                    if abs(getGesturePercentage(cardSize, from: value)) > thresholdPercentage {
//                        self.translation = CGSize(width: 500, height: 500)
//                    } else {
//                        self.translation = .zero
//                    }
//                })
//        )
//
//    }
//}



struct CardView: View {
    @Binding var user: User
    var cardSize: CGSize
    
    var body: some View {
        ZStack {
            Image(user.image)
                .resizable()
                .scaledToFill()
                .frame(width: cardSize.width*0.8, height: cardSize.height*0.7)
                .clipped()
            VStack {
                Spacer()
                Nameplate(user: user)
            }
        }
        .padding()
        .frame(width: cardSize.width*0.8, height: cardSize.height*0.7)
        .cornerRadius(20)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 15, y: 15)
    }
}

struct Nameplate: View {
    var user: User
    
    init(user: User) {
        self.user = user
    }

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(user.name)
                    .fontWeight(.heavy)
                    .font(.title2)
                    .foregroundColor(.pine)
                    .lineLimit(nil)
                Text(user.profession)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(.pine)
                    .lineLimit(nil)
            }
            Text("\(user.age)")
                .font(.body)
                .fontWeight(.semibold)
                .padding()
            Spacer()
            Image(systemName: (user.gender == "M") ? "mustache" : "eyebrow")
                .resizable()
                .scaledToFill()
                .frame(width: 10, height: 15)
                .foregroundColor(.pine)
                .padding()
        }
        .padding([.vertical,.horizontal], 15)
        .background(Color.ghost.opacity(0.6))
    }
}


struct CardView_Previews: PreviewProvider {
    @State static var user = User(name: "sk", profession: "SDE", gender: "M", image: "sk", age: 20)
    static var previews: some View {
        CardView(user: $user, cardSize: CGSize(width: 350, height: 700))
    }
}
