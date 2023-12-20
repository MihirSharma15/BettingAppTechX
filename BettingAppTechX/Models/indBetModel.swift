//
//  indBetModel.swift
//  BettingAppTechX
//
//  Created by Mihir Sharma on 12/19/23.
//

import Foundation
import SwiftUI

class IndividualBet: Identifiable, ObservableObject {
    
    var id = UUID()
    var betText: String
    var betDesc: String
    @Published var likeCount: Int = 0
    var datePub: Date
    
    var dateMon: String
    var dateDay: String
    
    init(betText: String, betDesc: String) {
        self.betText = betText
        self.betDesc = betDesc
        self.datePub = Date.now
        self.dateMon = String(self.datePub.formatted(Date.FormatStyle().month(.abbreviated)))
        self.dateDay = String(self.datePub.formatted(Date.FormatStyle().day(.defaultDigits)))
    }
    
    
    
}

class BetManagerClass: ObservableObject {
    
    @Published var betListArray: [IndividualBet]
    init(betListArray: [IndividualBet]) {
        self.betListArray = betListArray
    }
    
    
    
}



