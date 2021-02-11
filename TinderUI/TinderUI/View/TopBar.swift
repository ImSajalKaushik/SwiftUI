//
//  TopBar.swift
//  QuizApp
//
//  Created by Sajal Kaushik on 13/01/21.
//

import SwiftUI

struct TopBar: View {
    @Binding var selectedTab: Int
    var body: some View {
        HStack {
            Button(action: {selectedTab = 0}, label: {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.highlight)
                    .padding(15)
                    .background(Color.ghost)
                    .clipShape(Circle())
            })
            Spacer()
            Button(action: {selectedTab = 1}, label: {
                Image(systemName: "bolt")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.yellow)
                    .padding(15)
                    .background(Color.ghost)
                    .clipShape(Circle())
            })
            Spacer()
            Button(action: {selectedTab = 2}, label: {
                Image(systemName: "paperplane")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.olive)
                    .padding(15)
                    .background(Color.ghost)
                    .clipShape(Circle())
            })
        }
        .padding(.horizontal, 10)
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar(selectedTab: .constant(1))
    }
}
