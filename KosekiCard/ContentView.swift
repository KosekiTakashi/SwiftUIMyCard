//
//  ContentView.swift
//  KosekiCard
//
//  Created by 小関隆司 on 2019/12/08.
//  Copyright © 2019 kosekitakashi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.20, green:0.60, blue:0.86)
                .edgesIgnoringSafeArea(.all)
                
            VStack {
                Image("cat")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 1000.0, height: 200.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                
                Text("Koseki Takashi")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                
                Divider()
                
                InfoView(text: "0123-456-789", imageName: "phone.fill")
                    
                InfoView(text: "takashi@gmail.com", imageName: "envelope.fill")
                   
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


