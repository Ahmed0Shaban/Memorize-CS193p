//
//  MemoryGame.swift
//  Memorize
//
//  Created by Ahmed Shaban on 19/03/2022.
//




// THIS IS THE MODEL

import Foundation

struct MemoryGame<CardContent> {
    
private(set) var cards: Array<Card>

    mutating func choose(_ card: Card) {
    
    // first we Generate an Index for the Card choosen so we can access and change its properties
    
    let chosenIndex = index(of: card)
    
    //then we change card state
    
    cards[chosenIndex].isFaceUp.toggle()
}
    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
                if cards[index].id == card .id {
            return index
          }
         }
        return 0 // Bogus!!
        }

init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
    cards = Array<Card>()
    // add numberOfPairsOfCards x2 cards to cards array
    for pairIndex in 0..<numberOfPairsOfCards {
        let content = createCardContent(pairIndex)
        
        cards.append(Card(id: pairIndex*2, content: content))
        cards.append(Card(id: pairIndex*2+1, content: content))

    }
}

    struct Card: Identifiable {
    
    var id: Int
    var isFaceUp: Bool = false
    var isMatched: Bool = true
    var content: CardContent

    }
}
