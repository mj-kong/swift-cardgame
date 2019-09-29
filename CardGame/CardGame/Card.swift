//
//  Card.swift
//  CardGame
//
//  Created by 공명진 on 2019/09/25.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

protocol CardDescribe {
    func suitDescribe() -> String
    func rankDescribe() -> String
}

/// 굳이 class로 만들지 않아도 될 것 같아서 struct형식으로 만들었습니다.
struct Card : CardDescribe, Equatable {
    
    private let suit: Suit
    private let rank: Rank
    
    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.suit == rhs.suit && lhs.rank == rhs.rank
    }
    
    init(suit: Suit, rank: Rank) {
        self.suit = suit
        self.rank = rank
    }
    
    /// CardDescribe
    func suitDescribe() -> String {
        return suit.description()
    }
    
    func rankDescribe() -> String {
        return rank.description()
    }

}
