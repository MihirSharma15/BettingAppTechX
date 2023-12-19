//
//  MainUXBetting Screen.swift
//  BettingAppTechX
//
//  Created by Mihir Sharma on 12/19/23.
//

import SwiftUI

struct MainUXBetting_Screen: View {
    var body: some View {
        
        ZStack {
            Rectangle().fill(pSteelBlue).brightness(0.3)
                .ignoresSafeArea()
            VStack{
                HStack {
                    Text("Recent Bets").font(.largeTitle).fontWeight(.regular)
                    
                }.padding([.top, .leading, .trailing])
                
                
                HStack{
                    RoundedRectangle(cornerRadius: 30).fill(pRed).frame(width:300, height:5)
                    
                }.padding(.horizontal).offset(y:-15)
                
                Spacer()
                
                ScrollView{
                    Rectangle()
                }.frame(maxHeight: 500)
                
            }
        }
    }
}

#Preview {
    MainUXBetting_Screen()
}
