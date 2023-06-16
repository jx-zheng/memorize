//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Kevin Zheng on 2023-06-09.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
