//
//  sampleMoreInfo.swift
//  BettingAppTechX
//
//  Created by Mihir Sharma on 12/20/23.
//

import SwiftUI

struct sampleMoreInfo: View {
    
    @State var MoreBetInfo: IndividualBet
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(LinearGradient(gradient: Gradient(colors: [pSteelBlue.opacity(1.2), pDarkPurple.opacity(0.3)]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)).frame(width: .infinity, height: 500)
            VStack{
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25).fill(pDarkPurple).frame(width: 300, height: 80).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    Text(MoreBetInfo.betText)
                        .font(.system(size: 40, weight: .ultraLight)).foregroundStyle(.white).minimumScaleFactor(0.6).frame(width: 250, height: 70)
                }.padding(.vertical)
                VStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).frame(width: 300, height: 3)
                    
                    Text(MoreBetInfo.betDesc)
                        .font(.title3).frame(width: .infinity, height:100).minimumScaleFactor(0.8)
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).frame(width: 300, height: 3)
                }.padding(.horizontal)
                    
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 15.0).fill(.green.opacity(0.6)).frame(width: 250, height: 50).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Text("Estimated Payout:")
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    
                    
                    
                }.padding(.all)
                
                HStack (spacing: 2){
                    Group{
                        Image(systemName: "dollarsign").resizable().aspectRatio(contentMode: .fit).frame(width:25, height:25)
                        
                        
                        RoundedRectangle(cornerRadius: 15.0).frame(width: 2, height: 25)
                    }.opacity(0.6)
                    
                    
                    Text(String(MoreBetInfo.likeCount))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding(.leading, 6)

                }
                
                Spacer()
                    
                
                
                    VStack{
                        Text(MoreBetInfo.dateMon)
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .fontWeight(.light)
                        Text(MoreBetInfo.dateDay)
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .fontWeight(.thin)
                        
                    }.padding(.all)
                
                    
                
                
                
                
            }.frame(height:500)
        }.padding(.all).gesture(DragGesture(minimumDistance: 100.0, coordinateSpace: .local)
            .onEnded { value in
                switch(value.translation.width, value.translation.height) {
                    case (-100...100, 0...):  print("down swie")
                    default:  print("no clue")
                }
            }
        )
        
        
    }
}

#Preview {
    sampleMoreInfo(MoreBetInfo: IndividualBet(betText: "Test", betDesc: "Test"))
}
