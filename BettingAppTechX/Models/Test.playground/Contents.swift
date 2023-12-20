import Foundation
import SwiftUI

class IndividualBet: Identifiable, ObservableObject {
    
    var id = UUID()
    var betName: String
    var betDesc: String
    var likeCount: Int = 0
    var datePub: Date
    
    var dateMon: String
    var dateDay: String
    
    init(betName: String, betDesc: String) {
        self.betName = betName
        self.betDesc = betDesc
        self.datePub = Date.now
        self.dateMon = String(self.datePub.formatted(Date.FormatStyle().month(.abbreviated)))
        self.dateDay = String(self.datePub.formatted(Date.FormatStyle().day(.defaultDigits)))
    }
    
    
    
}

var testBet: IndividualBet = IndividualBet(betName: "TestBet", betDesc: "Hello, This is a test")

print(testBet.id)
print(testBet.dateMon)
print(testBet.dateDay)



