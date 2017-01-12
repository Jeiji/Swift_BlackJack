//
//  ViewController.swift
//  Stack Views
//
//  Created by James Bruno on 1/11/17.
//  Copyright © 2017 James Bruno. All rights reserved.
//

import UIKit

var currentDeck: Deck!
var playerOne: Player!
var counter:Int = 0
var score:Int = 0


class ViewController: UIViewController {
    
    
    @IBOutlet weak var image0: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var image8: UIImageView!
    @IBOutlet weak var image9: UIImageView!
    @IBOutlet weak var image10: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    @IBOutlet weak var lastStack: UIStackView!
    
    @IBAction func button(_ sender: UIButton) {
        
        
        if counter == 0{
            currentDeck.shuffle()
            playerOne.draw(deck: currentDeck)
            var cardImgName = playerOne.hand[counter].suit+playerOne.hand[counter].value
            image0.image = UIImage(named: cardImgName)
            print(playerOne.hand[counter])
            score += playerOne.hand[counter].numerical_value
            scoreLabel.text = String(score)
            counter += 1
            print(counter)
            
        }else if counter == 1{
            currentDeck.shuffle()
            playerOne.draw(deck: currentDeck)
            var cardImgName = playerOne.hand[counter].suit+playerOne.hand[counter].value
            image1.image = UIImage(named: cardImgName)
            print(playerOne.hand[counter])
            score += playerOne.hand[counter].numerical_value
            scoreLabel.text = String(score)
            counter += 1
            print(counter)
        }else if counter == 2{
            currentDeck.shuffle()
            playerOne.draw(deck: currentDeck)
            var cardImgName = playerOne.hand[counter].suit+playerOne.hand[counter].value
            image2.image = UIImage(named: cardImgName)
            print(playerOne.hand[counter])
            score += playerOne.hand[counter].numerical_value
            scoreLabel.text = String(score)
            counter += 1
            print(counter)
        }else if counter == 3{
            currentDeck.shuffle()
            playerOne.draw(deck: currentDeck)
            var cardImgName = playerOne.hand[counter].suit+playerOne.hand[counter].value
            image3.image = UIImage(named: cardImgName)
            print(playerOne.hand[counter])
            score += playerOne.hand[counter].numerical_value
            scoreLabel.text = String(score)
            counter += 1
            print(counter)
        }else if counter == 4{
            currentDeck.shuffle()
            playerOne.draw(deck: currentDeck)
            var cardImgName = playerOne.hand[counter].suit+playerOne.hand[counter].value
            image4.image = UIImage(named: cardImgName)
            print(playerOne.hand[counter])
            score += playerOne.hand[counter].numerical_value
            scoreLabel.text = String(score)
            counter += 1
            print(counter)
        }else if counter == 5{
            currentDeck.shuffle()
            playerOne.draw(deck: currentDeck)
            var cardImgName = playerOne.hand[counter].suit+playerOne.hand[counter].value
            image5.image = UIImage(named: cardImgName)
            print(playerOne.hand[counter])
            score += playerOne.hand[counter].numerical_value
            scoreLabel.text = String(score)
            counter += 1
            print(counter)
        }else if counter == 6{
            currentDeck.shuffle()
            playerOne.draw(deck: currentDeck)
            var cardImgName = playerOne.hand[counter].suit+playerOne.hand[counter].value
            image6.image = UIImage(named: cardImgName)
            score += playerOne.hand[counter].numerical_value
            scoreLabel.text = String(score)
            counter += 1
            print(counter)
        }else if counter == 7{
            currentDeck.shuffle()
            playerOne.draw(deck: currentDeck)
            var cardImgName = playerOne.hand[counter].suit+playerOne.hand[counter].value
            image7.image = UIImage(named: cardImgName)
            score += playerOne.hand[counter].numerical_value
            scoreLabel.text = String(score)
            counter += 1
            print(counter)
        }else if counter == 8{
            currentDeck.shuffle()
            playerOne.draw(deck: currentDeck)
            var cardImgName = playerOne.hand[counter].suit+playerOne.hand[counter].value
            image8.image = UIImage(named: cardImgName)
            score += playerOne.hand[counter].numerical_value
            scoreLabel.text = String(score)
            counter += 1
            print(counter)
        }else if counter == 9{
            currentDeck.shuffle()
            playerOne.draw(deck: currentDeck)
            var cardImgName = playerOne.hand[counter].suit+playerOne.hand[counter].value
            image9.image = UIImage(named: cardImgName)
            score += playerOne.hand[counter].numerical_value
            scoreLabel.text = String(score)
            counter += 1
            print(counter)
        }else if counter == 10{
            currentDeck.shuffle()
            playerOne.draw(deck: currentDeck)
            let cardImgName = playerOne.hand[counter].suit+playerOne.hand[counter].value
            image10.image = UIImage(named: cardImgName)
            score += playerOne.hand[counter].numerical_value
            scoreLabel.text = String(score)
            counter += 1
            print(counter)
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentDeck = Deck()
        playerOne = Player(name:"Jerricus")
        currentDeck.shuffle()
        counter = 0
        score = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

