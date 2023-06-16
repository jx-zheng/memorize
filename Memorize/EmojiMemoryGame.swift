//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kevin Zheng on 2023-06-15.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["🙂", "😀", "😄", "😍", "🤩", "😎", "😊", "😃", "😆", "😇", "😉", "😋", "😘", "😌", "😜", "😝"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex] }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
