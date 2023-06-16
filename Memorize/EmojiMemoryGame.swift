//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kevin Zheng on 2023-06-15.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4) { _ in "😌" }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
