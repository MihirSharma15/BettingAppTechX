//
//  indBetView.swift
//  BettingAppTechX
//
//  Created by Mihir Sharma on 12/19/23.
//

import SwiftUI

struct indBetView: View {
    
    @ObservedObject var indBet: IndividualBet
    
    @State var openMoreInfo: Bool = false
    
    func increaseLike() {
        indBet.likeCount += 1
    }
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(LinearGradient(gradient: Gradient(colors: [pSteelBlue.opacity(1.2), pDarkPurple.opacity(0.3)]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)).frame(width: .infinity, height: 100)
            HStack{
                VStack{
                    Text(indBet.dateMon)
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(.light)
                    Text(indBet.dateDay)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.thin)
                }.padding(.leading)
                
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill().frame(width:2, height:60).opacity(0.6).padding(.horizontal, 5)
                
                VStack{
                    HStack {
                        Text(indBet.betText)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    HStack {
                        Text(indBet.betDesc)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .fontWeight(.thin)
                        Spacer()
                    }

                        
                }
                Spacer()
                Button(action: {increaseLike()}, label: {
                    HStack{
                        Text(String(indBet.likeCount))
                            .font(.title3)
                        Image(systemName: "flame").resizable().aspectRatio(contentMode: .fit).frame(maxWidth: 40, maxHeight: 40).padding(.trailing)
                        
                    }.foregroundStyle(.black)
                })
                
            }
            
        }.padding(.horizontal)
        
        
        
    }
}

#Preview {
    indBetView(indBet: IndividualBet(betText: "SampleText", betDesc: "SampleDesc."))
}
