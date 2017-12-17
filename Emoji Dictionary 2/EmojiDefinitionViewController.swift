//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary 2
//
//  Created by Lau Chin Wei on 16/12/2017.
//  Copyright © 2017 Yun. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
// ["😀","💩","🏎","🛰","🏟","🥜","🎷","🇲🇾"]
        
        if emoji == "😀" {
            emojiDefinitionLabel.text = "A nice smile!"
        }
        
        if emoji == "💩" {
            emojiDefinitionLabel.text = "A smelly poo poo by Irwyn!"
        }
        
        if emoji == "🏎" {
            emojiDefinitionLabel.text = "A weird Swift's formula car!"
        }
        
        if emoji == "🛰" {
            emojiDefinitionLabel.text = "A little satellite to stalk you!"
        }
        
        if emoji == "🏟" {
            emojiDefinitionLabel.text = "A red stadium for sports!"
        }
        
        if emoji == "🥜" {
            emojiDefinitionLabel.text = "A roasted groundnut!"
        }
        
        if emoji == "🎷" {
            emojiDefinitionLabel.text = "A noisy saxaphone!"
        }
        
        if emoji == "🇲🇾" {
            emojiDefinitionLabel.text = "A country I love very much!"
        }
        
    }

}
