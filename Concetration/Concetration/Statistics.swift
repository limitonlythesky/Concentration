//
//  Statistics.swift
//  Concetration
//
//  Created by Danel Baikadamova on 28.02.2022.
//

import Foundation

class Statistics {
    
    //creates the instance and guarantees that it's unique
    static let instance = Statistics()
    
    private init() {
    }
    
    //creates the global variable
    var totalGames = 0
    var totalWins = 0
}
