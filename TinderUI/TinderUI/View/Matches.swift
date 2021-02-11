//
//  Matches.swift
//  QuizApp
//
//  Created by Sajal Kaushik on 14/01/21.
//

import SwiftUI

struct Matches: View {
    let matches = [User]()
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    var body: some View {
        List {
            ForEach(0..<5) { match in
                MatchesCell()
            }
        }
        .background(Color.background)
        .edgesIgnoringSafeArea(.all)
    }
}

struct Matches_Previews: PreviewProvider {
    static var previews: some View {
        Matches()
    }
}


struct MatchesCell: View {
    var body: some View {
        
        HStack {
            Image("sk")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            Text("Sajal")
                .lineLimit(nil)
            Spacer()
        }
        .padding(10)
        .background(Color.ghost)
        .cornerRadius(35)
        .listRowBackground(Color.clear)
    }
}
