//
//  Card.swift
//  Concetration
//
//  Created by Danel Baikadamova on 27.02.2022.
//

import Foundation
import UIKit


class Card {  // Struct
    var id: String // remove Id
    var shown: Bool = false
    var image: UIImage!
    
    init(card: Card) {
        self.id = card.id
        self.shown = card.shown
        self.image = card.image
    }
    
    init(image: UIImage) {
        self.id = UUID().uuidString
        self.shown = false
        self.image = image
    }
    
    func equals(_ card: Card) -> Bool {
        return (card.id == id)
    }
    
    func copy() -> Card {
        return Card(card: self)
    }
}

