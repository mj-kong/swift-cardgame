//
//  CardGame.swift
//  CardGame
//
//  Created by yuaming on 2017. 12. 15..
//  Copyright © 2017년 JK. All rights reserved.
//

import Foundation

struct CardGame {
    private(set) var cardDeck: CardDeck
    
    init(_ cardDeck: CardDeck) {
        self.cardDeck = cardDeck
    }
    
    enum Action: Int {
        case reset = 1, shuffle, selectOne
    }
    
    enum GameError: String, Error {
        case invalidSelection = "잘못된 게임 메뉴입니다. 다시 선택하세요."
        case emptyValue = "입력값이 없습니다."
        case noCard = "선택할 카드가 없습니다."
        case noCardToShuffle = "섞을 카드가 없습니다."
    }
    
    mutating func startGame(_ action: Action) throws -> Card? {
        switch action {
        case .reset:
            cardDeck.reset()
        case .shuffle:
            guard cardDeck.count() > 2 else {
                throw GameError.noCardToShuffle
            }
            
            cardDeck.suffle()
        case .selectOne:
            guard cardDeck.isAvailable() else {
                throw GameError.noCard
            }
            
            return cardDeck.removeOne()
        }
        
        return nil
    }
}