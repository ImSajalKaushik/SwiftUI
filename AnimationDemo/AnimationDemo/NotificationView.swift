//
//  NotificatioonView.swift
//  AnimationDemo
//
//  Created by Sajal Kaushik on 19/11/20.
//

import SwiftUI

struct NotificationView: View {
    var notificationTitle: String = "This is the title of notification"
    var notificationBody: String = "This is the body of notification"
    
    var body: some View {
        HStack {
            Image(systemName: "airpods")
                .resizable()
                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading)
                {
                Text(notificationTitle)
                    .lineLimit(nil)
                    .padding()
                Text(notificationBody)
                    .lineLimit(nil)
            }
            
        }
        
        .frame(width: UIScreen.main.bounds.width-10, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.yellow)
        .cornerRadius(40)
    }
}

struct NotificatioonView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
