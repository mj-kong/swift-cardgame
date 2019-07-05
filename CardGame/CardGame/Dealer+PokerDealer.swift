//
//  Dealer+PokerDealer.swift
//  CardGame
//
//  Created by BLU on 05/07/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

protocol Dealer: Player {
    mutating func give() -> Card?
}

struct PokerDealer: Dealer {
    private(set) var name: String = "딜러"
    private(set) var hand: Hand
    private var deck: Deck
    
    init(hand: Hand, deck: Deck) {
        self.hand = hand
        self.deck = deck
    }
    
    mutating func receive(card: Card) {
        hand.add(card: card)
    }
    
    mutating func give() -> Card? {
        return deck.removeOne()
    }
}