//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Kevin Zheng on 2023-06-09.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
