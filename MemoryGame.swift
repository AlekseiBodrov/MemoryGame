//
//  MemoryGame.swift
//  Trainer
//
//  Created by Алексей on 21.07.2022.
//

import Foundation

// Model
struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func shoose (_ card: Card) {
        
        
    }
    
    init(namberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent ) {
        cards = Array<Card>()
   
        
        for indexPair in  0..<namberOfPairsOfCards {
            let content: CardContent = createCardContent(indexPair)
            cards.append(Card(content: content, id: indexPair * 2))
            cards.append(Card(content: content, id: indexPair * 2 + 1))
        }
        
        
    }
    
    
    
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
    
}






// Полное имя MemomryGame.Card т.е. определили что карта не должна относится ни к чему кроме как к MemomryGame, это не покерная карта, не карта для оплаты, карта MemomryGame.Card

   
