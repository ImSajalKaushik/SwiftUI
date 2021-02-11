//
//  Home.swift
//  QuizApp
//
//  Created by Sajal Kaushik on 07/02/21.
//

import SwiftUI

struct Home: View {
    let rows = [GridItem(.flexible(minimum: 180))]
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.ghost]), startPoint: .bottomLeading, endPoint: .topTrailing)
                .ignoresSafeArea()
            GeometryReader{ geo in
                TopView(geometry: geo.size)
                    .fill(Color.highlight)
                    .shadow(radius: 5, x: 10, y: 10)
                    .ignoresSafeArea()
                VStack(alignment: .leading) {
                    Text("Your watch History")
                        .fontWeight(.heavy)
                       .foregroundColor(.ghost)
                        .font(.title)
                        .padding(.top, 30)
                        .padding(.horizontal, 10)
                        .lineLimit(nil)
                        
                    List {
                        Section(header: SectionHeader(header: "Netflix", color: .red)) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHGrid(rows: rows, alignment: .top, spacing: 20){
                                    ForEach(0..<10) {_ in
                                        MovieColumns()
                                    }
                                }
                                .padding(.top, 10)
                                .padding(.leading, 10)
                            }
                            .listRowBackground(Color.clear)
                        }
                        Section(header: SectionHeader(header: "Prime", color: .blue).accentColor(.red)) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHGrid(rows: rows, alignment: .top, spacing: 20){
                                    ForEach(0..<10) {_ in
                                        MovieColumns()
                                    }
                                }
                                .padding(.top, 10)
                                .padding(.leading, 10)
                            }
                            .listRowBackground(Color.clear)
                        }

                    }
                    .padding(.top, geo.size.width/3)
                    .padding(.bottom, 0)
                    .listStyle(GroupedListStyle())
                }
                
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct SectionHeader: View {
    let header: String
    let color: Color
    var body: some View {
     Text(header)
        .padding(.top, 0)
        .padding(.bottom, 0)
        .foregroundColor(color)
    }
}


struct MovieColumns: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("sk")
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFill()
                .clipped()
            Text("Movie")
                .padding(.top, 0)
                .padding(.bottom, 2)
                .lineLimit(nil)
                .frame(minWidth: 0, maxWidth: 90, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.background)
        }
        .background(Color.ghost)
        .cornerRadius(20)
        .shadow(radius: 6, x: 10, y: 12)
        
    }
}

extension Home {
    fileprivate func TopView(geometry: CGSize) -> Path {
        
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addArc(center: CGPoint(x: geometry.width/2 , y: -10), radius: geometry.width/1.5, startAngle: .degrees(0), endAngle: .degrees(180), clockwise: false)
        }
    }
}
