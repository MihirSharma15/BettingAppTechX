//
//  MainUXBetting Screen.swift
//  BettingAppTechX
//
//  Created by Mihir Sharma on 12/19/23.
//


import SwiftUI

struct MainUXBetting_Screen: View {
    
    @ObservedObject var betList: BetManagerClass
    
    @State var newBetTitle: String = ""
    @State var newBetDesc: String = ""
    
    let sampleArray: [IndividualBet] = [IndividualBet(betText: "Example1", betDesc: "Desc1"),IndividualBet(betText: "Example2", betDesc: "Desc2"),IndividualBet(betText: "Example3", betDesc: "Desc3")]
    
    @State var addBetToggle: Bool = false
    
    func toggleBetMenu() {
        addBetToggle.toggle()
    }
    
    func addNewBetFunc() {
        
        
        betList.betListArray.append(IndividualBet(betText: newBetTitle, betDesc: newBetDesc))
        newBetTitle = ""
        newBetDesc = ""
        
    }
    
    
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
                        ForEach(betList.betListArray, id: \.id) {item in indBetView(indBet: item).overlay(
                            Group{
                                Rectangle()
                            }
                        
                        
                        )
                            
                            
                        }
                    }
                    
                }.frame(maxWidth: .infinity, maxHeight: 700).padding(.horizontal)
                
                Spacer()
                Button(action: 	{withAnimation(Animation.easeInOut){toggleBetMenu()}}, label: {
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
        }.navigationBarBackButtonHidden(true).overlay(Group{
            if addBetToggle {
                VStack {
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 25).fill(pDarkPurple).padding([.top, .leading, .trailing]).ignoresSafeArea().frame(height:400)
                        VStack{
                            HStack{
                                Spacer()
                                Button(action: {withAnimation(Animation.easeInOut(duration: 0.7)){toggleBetMenu()}}, label: {
                                    Image(systemName: "xmark").resizable().aspectRatio(contentMode: .fit).frame(width:30, height:30).foregroundStyle(.white).padding(.trailing,30)
                                })
                            }.padding(.all)
                            Text("Add Bet").font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(.white).padding([.leading, .bottom, .trailing]).frame(maxWidth: 250, maxHeight: 18)
                            
                            TextField("Bet Title", text: $newBetTitle).padding(.all).frame(width:300, height:50).background(Color.white).cornerRadius(10)
                            
                            TextField("Bet Description", text: $newBetDesc).padding(.all).frame(width:300, height:50).background(Color.white).cornerRadius(10)
                            
                            Button(action: {
                                
                                addNewBetFunc()
                                withAnimation(Animation.easeInOut){toggleBetMenu()}
                                
                            }, label: {
                                Text("Post Bet").font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(.light).tint(.white).frame(width: 300, height:50).background(pCrimson).cornerRadius(10).padding(.top)
                            })
                        }
                        
                    }
                    
                }.transition(.move(edge: .bottom))
            }
        })
    }
}

#Preview {
    MainUXBetting_Screen(betList: BetManagerClass(betListArray: []))
}
