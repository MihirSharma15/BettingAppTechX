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
    
    @State var moreInfoToggle: Bool = false
    
    @State var MoreBetInfo: IndividualBet = IndividualBet(betText: "", betDesc: "")
    
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
                        ForEach(betList.betListArray, id: \.id) {item in indBetView(indBet: item).onTapGesture {
                            MoreBetInfo = item
                            withAnimation(.smooth(duration: 0.2)){moreInfoToggle.toggle()}
                            
                        }
                        }
                    }
                }.frame(maxWidth: .infinity, maxHeight: 700).padding(.horizontal).overlay(Group{
                    if moreInfoToggle {
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 0).frame(width:500, height: 1000).opacity(0.5)
                            RoundedRectangle(cornerRadius: 25).fill(LinearGradient(gradient: Gradient(colors: [pSteelBlue.opacity(1.2), pDarkPurple.opacity(1.0)]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)).frame(width: .infinity, height: 500).padding(.horizontal,65)
                            VStack{
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 25).fill(pDarkPurple).frame(width: 300, height: 80).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                    Text(MoreBetInfo.betText)
                                        .font(.system(size: 40, weight: .ultraLight)).foregroundStyle(.white).minimumScaleFactor(0.6).frame(width: 250, height: 70)
                                }.padding(.vertical)
                                VStack {
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).frame(width: 300, height: 3)
                                    
                                    Text(MoreBetInfo.betDesc)
                                        .font(.title3).foregroundStyle(.white).frame(width: .infinity, height:100).minimumScaleFactor(0.8)
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).frame(width: 300, height: 3)
                                }.padding(.horizontal)
                                    
                                ZStack {
                                    
                                    RoundedRectangle(cornerRadius: 15.0).fill(.green.opacity(0.6)).frame(width: 250, height: 50).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    Text("Estimated Payout:")
                                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
                                    
                                    
                                    
                                }.padding(.all)
                                
                                HStack (spacing: 2){
                                    Group{
                                        Image(systemName: "dollarsign").resizable().aspectRatio(contentMode: .fit).frame(width:25, height:25).foregroundStyle(.white)
                                        
                                        
                                        RoundedRectangle(cornerRadius: 15.0).fill(.white).frame(width: 2, height: 25)
                                    }.opacity(0.6)
                                    
                                    
                                    Text(String(MoreBetInfo.payout))
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundStyle(.white).padding(.leading, 6)

                                }
                                
                                Spacer()
                                
                                    VStack{
                                        Text(MoreBetInfo.dateMon)
                                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
                                            .fontWeight(.light)
                                        Text(MoreBetInfo.dateDay)
                                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
                                            .fontWeight(.thin)
                                        
                                    }.padding(.all)
                                
                                
                            }.frame(height:500)
                        }.padding(.all).gesture(DragGesture(minimumDistance: 100.0, coordinateSpace: .local)
                            .onEnded { value in
                                switch(value.translation.width, value.translation.height) {
                                case (-100...100, 0...):  withAnimation(.smooth(duration: 0.2)){moreInfoToggle.toggle()}
                                    default:  print("no clue")
                                }
                            }
                        )
                    }
                })
                
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
