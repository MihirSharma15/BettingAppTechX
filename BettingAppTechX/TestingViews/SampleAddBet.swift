//
//  SampleAddBet.swift
//  BettingAppTechX
//
//  Created by Mihir Sharma on 12/20/23.
//

import SwiftUI

struct SampleAddBet: View {
    @State var Test: String
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 25).fill(pDarkPurple).padding([.top, .leading, .trailing]).ignoresSafeArea().frame(height:400)
                VStack{
                    HStack{
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "xmark").resizable().aspectRatio(contentMode: .fit).frame(width:30, height:30).foregroundStyle(.white).padding(.trailing,30)
                        })
                    }.padding(.all)
                    Text("Add Bet").font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(.white).padding([.leading, .bottom, .trailing]).frame(maxWidth: 250, maxHeight: 18)
                    TextField("Bet Title", text: $Test).padding(.all).frame(width:300, height:50).background(Color.white).cornerRadius(10)
                    TextField("Bet Description", text: $Test).padding(.all).frame(width:300, height:50).background(Color.white).cornerRadius(10)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Post Bet").font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(.light).tint(.white).frame(width: 300, height:50).background(pCrimson).cornerRadius(10).padding(.top)
                    })
                }
                
            }
            
        }
    }
}

#Preview {
    SampleAddBet(Test: "")
}
