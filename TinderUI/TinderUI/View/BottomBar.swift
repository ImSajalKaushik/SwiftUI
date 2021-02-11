//
//  BottomBar.swift
//  QuizApp
//
//  Created by Sajal Kaushik on 13/01/21.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "x.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.highlight)
                    .padding(15)
                    .background(Color.background)
                    .clipShape(Circle())
                    .shadow(radius: 10, x:8, y:8 )
            })
            Spacer()
//            Button(action: {}, label: {
//                Image(systemName: "bolt")
//                    .resizable()
//                    .frame(width: 30, height: 30)
//                    .foregroundColor(.yellow)
//                    .padding(15)
//                    .background(Color.ghost)
//                    .clipShape(Circle())
//                    .shadow(radius: 10, x:8, y:8 )
//            })
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "heart.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.highlight)
                    .padding(15)
                    .background(Color.ghost)
                    .clipShape(Circle())
                    .shadow(radius: 10, x:8, y:8 )
            })
        }.padding(.horizontal, 10)
    }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
            .previewLayout(.sizeThatFits)
    }
}


//{
//    GeometryReader { geometry in
//        HStack {
//            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                Image(systemName: "x.circle")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                    .foregroundColor(.highlight)
//                    .padding(5)
//                    .background(Color.ghost)
//                    .clipShape(Circle())
//            })
//            Spacer()
//            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                Image(systemName: "heart.circle")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                    .foregroundColor(.highlight)
//                    .padding(5)
//                    .background(Color.ghost)
//                    .clipShape(Circle())
//            }
//            )
//
//        }
//        .padding(5)
//        .background(Color.apricot)
//        .cornerRadius(geometry.size.height/2)
//    }.frame(height: 70)
//    .padding()
//}
