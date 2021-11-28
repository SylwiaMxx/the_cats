//
//  CatsFacts.swift
//  CatsFacts
//
//  Created by Sylwia Markes on 28/11/2021.
//

import Foundation

struct CatFacts {
    
    var factNr: String
    var facts: String? = nil
    var isFavourite: Bool = false
}

extension CatFacts {
    static var testData = [
        CatFacts(factNr: "Fact nr 1", facts: "Don't forget about taxi receipts"),
        CatFacts(factNr: "Fact nr 2", facts: "Don't forget about taxi receipts", isFavourite: true)
    
    ]
}
