//
//  WelcomeLogin .swift
//  BettingAppTechX
//
//  Created by Mihir Sharma on 12/18/23.
//

import SwiftUI

struct WelcomeLogin_: View {
    var body: some View {
        VStack{
        
            ZStack {
                Rectangle().fill(pSteelBlue).frame(width:600,height: 400).offset(x:-75,y:-400).rotationEffect(.degrees(7.0))
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15.0).foregroundStyle(pDarkPurple).frame(maxWidth:200, maxHeight: 50).shadow(radius: 20).opacity(0.7)
                        Text("UNC Bets")
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .fontWeight(.light).foregroundStyle(.white)
                        
                    }.padding([.top, .leading, .trailing])
                    Divider().overlay(pDarkPurple).frame(maxWidth:300)
                    Text("UNC's Premier Betting App")
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding([.top, .leading, .trailing])
                    Spacer()
                }
                    
            }
            
            
            
            
            
        }
    }
}

#Preview {
    WelcomeLogin_()
}
