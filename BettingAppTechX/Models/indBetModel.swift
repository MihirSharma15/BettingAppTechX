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
    var betName: String
    var betDesc: String
    var likeCount: Int = 0
    var datePub: Date
    
    init(betName: String, betDesc: String) {
        self.betName = betName
        self.betDesc = betDesc
        self.datePub = Date()
    }
    
    
    
}

