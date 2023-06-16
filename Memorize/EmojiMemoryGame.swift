//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kevin Zheng on 2023-06-15.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🙂", "😀", "😄", "😍", "🤩", "😎", "😊", "😃", "😆", "😇", "😉", "😋", "😘", "😌", "😜", "😝"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex] }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
