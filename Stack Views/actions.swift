//
//  actions.swift
//  Stack Views
//
//  Created by James Bruno on 1/11/17.
//  Copyright © 2017 James Bruno. All rights reserved.
//


import UIKit



var str = "Hello, playground"


struct Card{
    var value: String
    var suit: String
    var numerical_value: Int
    func show(){
        print(value,"of",suit,": value", numerical_value)
    }
}


class Player{
    var name: String
    var hand: [Card]
    init(name: String){
        self.name = name
        self.hand = [Card]()
    }
    func draw(deck:Deck) -> Card? {
        if let dealtCard = deck.deal(){
            self.hand.append(dealtCard)
            return dealtCard
        }else{
            return nil
        }
    }
    func discard(suit: String, value: String) -> Bool{
        for i in 0...self.hand.count-1{
            if self.hand[i].suit == suit && self.hand[i].value == value{
                self.hand.remove(at: i)
                return true
            }
        }
        return false
    }
    func show(){
        for card in self.hand{
            card.show()
        }
    }
}

class Deck{
    var cards = [Card]()
    init(){
        self.reset()
    }
    func deal() -> Card? {
        if self.cards.count > 0{
            let dealtcard = self.cards.remove(at: 0)
            return dealtcard
        }else{
            return nil
        }
        
        
        
    }
    
    func shuffle(){
        for i in stride(from: self.cards.count-1, to:0, by: -1){
            let swapCardIndex = Int(arc4random_uniform(UInt32(i)))
            let temp = self.cards[i]
            self.cards[i] = self.cards[swapCardIndex]
            self.cards[swapCardIndex] = temp
        }
    }
    
    func reset(){
        let values = ["1.png" , "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png", "9.png", "10.png", "j.png", "q.png", "k.png"]
        let suits = ["c", "s", "d", "h"]
        self.cards = []
        for suit in suits{
            for i in 0...12{
                let newcard = Card(value: values[i], suit: suit, numerical_value: i+1)
                self.cards.append(newcard)
            }
        }
    }
    func show(){
        for card in self.cards{
            card.show()
        }
    }
    
}





