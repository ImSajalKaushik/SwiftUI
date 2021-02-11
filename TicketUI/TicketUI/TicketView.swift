//
//  TicketView.swift
//  TicketUI
//
//  Created by Sajal Kaushik on 10/02/21.
//

import SwiftUI

struct TicketView: View {
    var geo: CGSize
    @State private var animated = false
    var body: some View {
        VStack(alignment: .center) {
                Image(systemName: "tram.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                HStack(alignment: .center) {
                    Text("MZN").font(.title).animation(nil)
                    if animated {
                        Spacer()
                    }
                    Image(systemName: "arrow.right").animation((Animation.interpolatingSpring(stiffness: 100, damping: 10).repeatForever()))
                    if !animated {
                        Spacer()
                    }
                    Text("SRE").font(.title).animation(nil)
                }
                Divider()
            DetailsView(leftTitle: "Passenger", leftBody: "Sajal Kaushik", rightTitle: "Seat", rightBody: "30D")
                DetailsView(leftTitle: "Date", leftBody: "Feb 14, 2021", rightTitle: "Time", rightBody: "11:30")
                DetailsView(leftTitle: "Train", leftBody: "UTKR", rightTitle: "PNR", rightBody: "241551")
                Divider()
            Spacer()
        }
        .padding()
        .frame(width: geo.width, height: geo.height)
        .background(Ticket(geo: geo))
        .cornerRadius(20)
        .animation(nil)
        .onAppear {
                animated.toggle()
        }
    }
    //}
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView(geo: CGSize(width: UIScreen.main.bounds.width-50, height: UIScreen.main.bounds.height-100))
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}


struct Ticket: View {
    var geo: CGSize
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: geo.width, y: 0))
            path.addLine(to: CGPoint(x: geo.width, y: geo.height*0.7))
            path.addArc(center: CGPoint(x: geo.width, y: geo.height*0.7), radius: 30, startAngle: .degrees(270), endAngle: .degrees(90), clockwise: true)
            path.addLine(to: CGPoint(x: geo.width, y: geo.height))
            path.addLine(to: CGPoint(x: 0, y: geo.height))
            path.addLine(to: CGPoint(x: 0, y: geo.height*0.7))
            path.move(to: CGPoint(x: 0.0, y: geo.height*0.7))
            path.addArc(center: CGPoint(x: 0, y: geo.height*0.7), radius: 30, startAngle: .degrees(90), endAngle: .degrees(270), clockwise: true)
            path.addLine(to: CGPoint(x: 0, y:0))
        }
        .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1)).opacity(0.6), Color(#colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1)).opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .frame(width: geo.width, height: geo.height)
    }
}

struct DetailsView: View {
    var leftTitle: String
    var leftBody: String
    var rightTitle: String
    var rightBody: String
    var body: some View {
        VStack() {
            HStack {
                Text(leftTitle).font(.caption)
                Spacer()
                Text(rightTitle).font(.caption)
            }
            HStack {
                Text(leftBody).font(.body)
                Spacer()
                Text(rightBody).font(.body)
            }
        }.padding(.bottom, 8)
    }
}
