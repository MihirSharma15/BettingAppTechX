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
    
    let sampleArray2: [IndividualBet] = [IndividualBet(betText: "Example1", betDesc: "Desc1"),IndividualBet(betText: "Example2", betDesc: "Desc2"),IndividualBet(betText: "Example3", betDesc: "Desc3"),IndividualBet(betText: "Example1", betDesc: "Desc1"),IndividualBet(betText: "Example2", betDesc: "Desc2"),IndividualBet(betText: "Example3", betDesc: "Desc3"),IndividualBet(betText: "Example1", betDesc: "Desc1"),IndividualBet(betText: "Example2", betDesc: "Desc2"),IndividualBet(betText: "Example3", betDesc: "Desc3")]
    
    
    var body: some View {
        // Overall VStack
        NavigationStack{
            VStack{
                // UNC Bets + Blue Rectangle
                ZStack {
                    
                    Rectangle().fill(pSteelBlue).offset(x:0,y:-370).rotationEffect(.degrees(3.0)).frame(width:500,height: 400).ignoresSafeArea().opacity(0.8)
                    Rectangle().fill(pSteelBlue).offset(x:0,y:-350).rotationEffect(.degrees(3.0)).frame(width:500,height: 400).ignoresSafeArea().opacity(1)
                    Rectangle().fill(pSteelBlue).offset(x:0,y:-330).rotationEffect(.degrees(3.0)).frame(width:500,height: 400).ignoresSafeArea().brightness(0.6).opacity(0.4)
                    

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
                        
                        
                        
                        // Spacer to push Unc bets to top of the screen
                        Spacer()
                    }.padding(.all)
                    
                    // Login Screen
                    VStack {
                        Image(systemName: "person.badge.shield.checkmark").resizable().frame(minWidth: 60,  maxWidth: 60, minHeight: 60, maxHeight: 60)
                        Text("Login")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                        Divider().overlay(pDarkPurple).frame(maxWidth:300)
                        
                        TextField("Username", text: $Username).padding(.all).frame(width:300, height:50).background(Color.black.opacity(0.1)).cornerRadius(10)
                        SecureField("Password", text: $Password).padding(.all).frame(width:300, height:50).background(Color.black.opacity(0.1)).cornerRadius(10)
                        NavigationLink{
                            MainUXBetting_Screen(betList: BetManagerClass(betListArray: sampleArray2),Test: "")
                        } label: {
                            
                            Text("Login").foregroundColor(.white).frame(width:300,height:50).background(pSteelBlue).cornerRadius(10)
                            
                           
                        }
                        
                        
                        
                    }.offset(x:0,y:25)
                    
                    
                    
                }
                
                
            }
        }
    }
}

#Preview {
    WelcomeLogin_(Username: "", Password: "")
}
