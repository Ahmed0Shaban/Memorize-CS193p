//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ahmed Shaban on 19/03/2022.
//



// THIS IS THE VIEWMODEL

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["🚗","🚐","🚞","🚂","🛺","🚀","🚏","🗺","🕹","🔪","🪥"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 3) {
            pairIndex in emojis[pairIndex]
        }
        
    }
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    // He could make var model a non private but the lecturer prefers to keep model private and
     // refere to it by a var
    
    // MARK: - Intent(s)
    func choose (_ card: MemoryGame<String>.Card) {
        model.choose(card)
        
    }
}
