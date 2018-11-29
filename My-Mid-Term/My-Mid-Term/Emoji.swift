//
//  Emoji.swift
//  My-Mid-Term
//
//  Created by Joey Essak on 10/25/18.
//  Copyright © 2018 Joey Essak. All rights reserved.
//

import Foundation
class Emoji
{
    
    var emoji = "🤓👨🏻‍💻👾🌆🌠🌠🌅🌠🌅🌠🌅🌅🛣⛩🛤🕌"
    
    
    init(emoji:String)
    {
        self.emoji = emoji
    }
    
 
    
    
    
   ///1
    func printAllEmoji()  {
       print(emoji)
    }
    
    
    
    func countEmoji()->Int
    {
        return emoji.count
    }
    
    
    func removeFirstEmoji()
    {
  emoji.remove(at: emoji.startIndex)
        
    }
    
    
    func addEmojiesAtEnd(emoji : String)
    {
    self.emoji.append(emoji)
    }
    

 
   func countHowManyEmojies(enterEmoji:Character){
        
        var count = 0
        for index in emoji{
            
            
            
            
            if index == enterEmoji{
               count = 1 + count
  
            }
           
        }
         print("The count you are looking for is \(count) ")
        
        
        
    }
    
    
  
    
    func backwardsOrder()
    {
        let reversed = String(emoji.reversed())
        print(reversed)
       
    }

    
    
    func appendChar( em : String)-> String
    {
         self.emoji.append(emoji)
        return  emoji
    }

    
    
    
    
    
    
}
