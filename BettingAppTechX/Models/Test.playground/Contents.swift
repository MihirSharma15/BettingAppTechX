import UIKit

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

var newBet: IndividualBet = IndividualBet(betName: "Test", betDesc: "This is a test bet.")

print(newBet.id)
print(newBet.betName)
print(newBet.betDesc)
print(newBet.likeCount)
print(newBet.datePub)


