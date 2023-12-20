//
//  indBetView.swift
//  BettingAppTechX
//
//  Created by Mihir Sharma on 12/19/23.
//

import SwiftUI

struct indBetView: View {
    
//    @State var indBet: IndividualBet
    
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(LinearGradient(gradient: Gradient(colors: [pSteelBlue.opacity(1.2), pDarkPurple.opacity(0.3)]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)).frame(maxWidth: .infinity, maxHeight: 100).shadow(radius: 10)
            HStack{
//                Image(systemName: "moon.stars").resizable().frame(maxWidth: 50, maxHeight: 50).padding(.leading, 20)
                VStack{
                    Text("Dec")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(.light)
                    Text("9")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.thin)
                }.padding(.horizontal)
                
                
                
                VStack{
                    HStack {
                        Text("Hello")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    HStack {
                        Text("Really")
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .fontWeight(.thin)
                        Spacer()
                    }
                
                    
                        
                }
                Spacer()
                
                Text("Hello")
            }
            
        }.padding(.horizontal)
        
        
        
    }
}

#Preview {
    indBetView()
}
