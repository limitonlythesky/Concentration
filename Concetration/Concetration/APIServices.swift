//
//  APIServices.swift
//  Concetration
//
//  Created by Danel Baikadamova on 28.02.2022.
//

import Foundation
import UIKit

typealias CardsArray = [Card]

class APIService {
    
    static let shared = APIService()
    
    static var defaultCardImages:[UIImage] = [
        UIImage(named: "luffy")!,
        UIImage(named: "nami")!,
        UIImage(named: "zoro")!,
        UIImage(named: "sanji")!,
        UIImage(named: "ussop")!,
        UIImage(named: "robin")!,
        UIImage(named: "franky")!,
        UIImage(named: "chopper")!
    ];
    
    func getCardImages(completion: ((CardsArray?, Error?) -> ())?) {
        var cards = CardsArray()
        let cardImages = APIService.defaultCardImages
        
        for image in cardImages {
            let card = Card(image: image)
            let copy = card.copy()
            
            cards.append(card)
            cards.append(copy)
        }
        
        completion!(cards, nil)
    }
}
