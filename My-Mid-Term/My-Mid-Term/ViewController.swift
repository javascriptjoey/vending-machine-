//
//  ViewController.swift
//  My-Mid-Term
//
//  Created by Joey Essak on 10/25/18.
//  Copyright © 2018 Joey Essak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 var myEmoji = Emoji(emoji: "🤓👨🏻‍💻👾🌆🌠🌠🌅🌠🌅🌠🌅🌅🛣⛩🛤🕌")
    
    
    @IBOutlet weak var myChange: UILabel!
    
    @IBOutlet weak var Balance: UILabel!
    var BalanceMoney = 0.00
    
    
    @IBAction func Chips(_ sender: Any) {
   
        if BalanceMoney > 1.35 {
            var change = BalanceMoney - 1.35
            change = round(100 * change) / 100
            
         myChange.text = String(change)
         Balance.text = ""
        }
        else {
             myChange.text = String("Im sorry you do not have enough money")
             Balance.text = ""
        }
       
    
    }
    
    
    @IBAction func Water(_ sender: Any) {
        if BalanceMoney > 1.20 {
            var change = BalanceMoney - 1.20
            change = round(100 * change) / 100
            myChange.text = String(change)
            Balance.text = ""
        }
        else {
            myChange.text = String("Im sorry you do not have enough money")
            Balance.text = ""
        }
        
        
    }
    
    
    
    @IBAction func Coke(_ sender: Any) {
   
        if BalanceMoney > 1.75 {
            var change = BalanceMoney - 1.75
            change = round(100 * change) / 100
            
            myChange.text = String(change)
            Balance.text = ""
        }
        else {
            myChange.text = String("Im sorry you do not have enough money")
            Balance.text = ""
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        Balance.text = String( BalanceMoney)
        // Do any additional setup after loading the view, typically from a nib.
       
    print(myEmoji.countEmoji())
       
       myEmoji.removeFirstEmoji()
       myEmoji.printAllEmoji()
       myEmoji.backwardsOrder()
        myEmoji.addEmojiesAtEnd(emoji: "⛩")
        myEmoji.printAllEmoji()
        myEmoji.countHowManyEmojies(enterEmoji: "🌠")
    myEmoji.appendChar(em: "👾")
        
    }
    
    
    
    
    @IBAction func Dollar(_ sender: Any) {
    
    BalanceMoney = BalanceMoney + 1.00
        Balance.text = String( BalanceMoney)
        
    
    }
    
    
    @IBAction func Quarter(_ sender: Any) {
          BalanceMoney = BalanceMoney + 0.25
        Balance.text = String( BalanceMoney)
    }
    
    @IBAction func Dime(_ sender: Any) {
        BalanceMoney = BalanceMoney + 0.10
        Balance.text = String( BalanceMoney)
    }
    
    @IBAction func Nickle(_ sender: Any) {
          BalanceMoney = BalanceMoney + 0.05
        Balance.text = String( BalanceMoney)
    }
    
}

