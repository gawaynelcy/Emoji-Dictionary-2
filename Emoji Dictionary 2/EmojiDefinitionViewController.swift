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
    @IBOutlet weak var emojiName: UILabel!
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        emojiDefinitionLabel.lineBreakMode = .byWordWrapping
        emojiDefinitionLabel.numberOfLines = 0;
        
// ["😀","💩","🏎","🛰","🏟","🥜","🎷","🇲🇾"]
        
        if emoji == "😀" {
            emojiDefinitionLabel.text = "A nice smile!"
            emojiName.text = "Classic Smiley"
        }
        
        if emoji == "💩" {
            emojiDefinitionLabel.text = "A smelly poo poo by Irwyn!"
            emojiName.text = "Poop"
        }
        
        if emoji == "🏎" {
            emojiDefinitionLabel.text = "A weird Swift's formula car!"
            emojiName.text = "Race car"
        }
        
        if emoji == "🛰" {
            emojiDefinitionLabel.text = "A little satellite to stalk you! And I am doing this to test the long string of texts! If it succeeded, I it will display the whole paragraph of text strings in the emojiDefinitionLabel."
            emojiName.text = "Satellite"
        }
        
        if emoji == "🏟" {
            emojiDefinitionLabel.text = "A red stadium for sports!"
            emojiName.text = "Stadium"
        }
        
        if emoji == "🥜" {
            emojiDefinitionLabel.text = "A roasted ground nut!"
            emojiName.text =  "Ground nut"
        }
        
        if emoji == "🎷" {
            emojiDefinitionLabel.text = "A noisy saxophone!"
            emojiName.text = "Saxophone"
        }
        
        if emoji == "🇲🇾" {
            emojiDefinitionLabel.text = "A country I love very much!"
            emojiName.text = "Malaysia"
        }
        
    }

}
