//
//  SwipeView.swift
//  QuizApp
//
//  Created by Sajal Kaushik on 06/02/21.
//

import SwiftUI

struct SwipeView: View {
    
    @State private var users: [User] = getAll()

    let cardSize = CGSize(width: 350, height: 700)
    var body: some View {
        //ScrollView {
            ZStack {
                ForEach(0..<self.users.count) { index in
                    CardView(user: $users[index], cardSize: cardSize)
                        .gesture(DragGesture().onChanged {value in
                            self.users[index].width = value.translation.width
                            self.users[index].degree = (Double(value.translation.width)/Double(cardSize.width))*25
                        }
                        .onEnded{ value in
                            if self.users[index].width > cardSize.width/2 - 80 {
                                self.users[index].width = 800
                            } else if -(self.users[index].width) > cardSize.width/2 - 80 {
                                self.users[index].width = -800
                            } else {
                                self.users[index].width = 0
                                self.users[index].degree = 0
                            }
                        }
                        )
                        .offset(x: users[index].width, y: 0)
                        .rotationEffect(.degrees(users[index].degree))
                        .animation(.interactiveSpring())
                }
            }
            
        //}
    }
    
    
    private func getGesturePercentage(_ geometry: CGSize, from gesture: DragGesture.Value) -> CGFloat {
        return gesture.translation.width / cardSize.width
    }
}

struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeView()
    }
}


func getAll() -> [User] {
    var users = [User]()
    users.append(User(name: "Sajal", profession: "iOS Developer", gender: "M", image: "sk", age: 20))
    users.append(User(name: "Kaushik", profession: "iOS Developer", gender: "M", image: "sk2", age: 20))
    users.append(User(name: "One", profession: "iOS Developer", gender: "M", image: "sk3", age: 20))
    users.append(User(name: "Fine", profession: "iOS Developer", gender: "M", image: "sk5", age: 20))
    users.append(User(name: "Day", profession: "iOS Developer", gender: "M", image: "sk4", age: 20))
    users.append(User(name: "I'll be loved", profession: "Sab Changa si", gender: "M", image: "dard", age: 56))
    return users.reversed()
}
