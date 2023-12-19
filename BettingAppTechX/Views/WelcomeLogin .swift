//
//  WelcomeLogin .swift
//  BettingAppTechX
//
//  Created by Mihir Sharma on 12/18/23.
//

import SwiftUI

struct WelcomeLogin_: View {
    @State var Username: String
    @State var Password: String
    var body: some View {
        VStack{
        
            ZStack {
                Rectangle().fill(pSteelBlue).frame(width:.infinity,height: .infinity).offset(x:0,y:0).rotationEffect(.degrees(0.0)).ignoresSafeArea()
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
                    
                    VStack {
                        Image(systemName: "person.badge.shield.checkmark").resizable().frame(minWidth: 60,  maxWidth: 60, minHeight: 60, maxHeight: 60)
                        
                    }
                    
                    
                    
                }
                
            }
            
            
            
            
            
            
            
            
            
            
            
        }
    }
}

#Preview {
    WelcomeLogin_(Username: "Hello", Password: "Test123")
}
