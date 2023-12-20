//
//  MainUXBetting Screen.swift
//  BettingAppTechX
//
//  Created by Mihir Sharma on 12/19/23.
//


import SwiftUI

struct MainUXBetting_Screen: View {
    
    @ObservedObject var betList: BetManagerClass
    let sampleArray: [IndividualBet] = [IndividualBet(betText: "Example1", betDesc: "Desc1"),IndividualBet(betText: "Example2", betDesc: "Desc2"),IndividualBet(betText: "Example3", betDesc: "Desc3"),IndividualBet(betText: "Example1", betDesc: "Desc1"),IndividualBet(betText: "Example2", betDesc: "Desc2"),IndividualBet(betText: "Example3", betDesc: "Desc3"),IndividualBet(betText: "Example1", betDesc: "Desc1"),IndividualBet(betText: "Example2", betDesc: "Desc2"),IndividualBet(betText: "Example3", betDesc: "Desc3")]
    var body: some View {
        
        ZStack {
            Rectangle().fill(pSteelBlue).brightness(0.3)
                .ignoresSafeArea()
            VStack{
                
                HStack {
                    Text("Recent Bets").font(.largeTitle).fontWeight(.regular)
                    
                }.padding([.top, .leading, .trailing])
                
                
                HStack{
                    RoundedRectangle(cornerRadius: 30).fill(pDarkPurple).frame(width:300, height:3)
                    
                }.padding(.horizontal).offset(y:-15)
                
                
                
                ScrollView{
                    VStack {
                        ForEach(sampleArray, id: \.id) {item in indBetView(indBet: item)
                            
                        }
                    }
                    
                }.frame(maxWidth: .infinity, maxHeight: 700).padding(.horizontal)
                
                Spacer()
                Button(action: {}, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .fill(pDarkPurple).frame(width: .infinity, height:100)
                        
                        Image(systemName: "plus.app")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.white)
                            .frame(width: 50, height: 50)
                    }.padding([.top, .leading, .trailing])
                })
                
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MainUXBetting_Screen(betList: BetManagerClass(betListArray: [IndividualBet(betText: "Example1", betDesc: "Desc1"),IndividualBet(betText: "Example2", betDesc: "Desc2"),IndividualBet(betText: "Example3", betDesc: "Desc3")]))
}
