//
//  EmojiMemoryGame.swift
//  Trainer
//
//  Created by Алексей on 21.07.2022.
//

import SwiftUI

// View Model

class EmojiMemoryGame {
    static var emojis = ["🚂","🚃","🚄","🚅","🚆","🚇","🚈","🚉","🚊", "🚝","🚞","🚋","🚌","🚍","🚎","🚐","🚑","🚒","🚓","🚔", "🚕","🚖","🚗","🚘","🚙","🛻","🚚","🚛","🚜","🏎️","🏍️",   "🛵","🛺","🚲","🛴"]
    
    
    static func createMomoryGame () -> MemoryGame<String> {
        MemoryGame<String> (namberOfPairsOfCards: 4) { pairIndex in
        emojis[pairIndex] }
    }
    
    private var model: MemoryGame<String> = createMomoryGame()
    
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
 
