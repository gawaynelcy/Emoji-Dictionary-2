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
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.theEmoji
        emojiDefinitionLabel.text = emoji.def
        emojiName.text = emoji.name
        birthLabel.text = "Year of introduction: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        
        
/*
        emojiLabel.text = emoji
        emojiDefinitionLabel.lineBreakMode = .byWordWrapping
        emojiDefinitionLabel.numberOfLines = 0;
        
// ["😀","💩","🏎","🛰","🏟","🥜","🎷","🇲🇾"]
        
        if emoji == "😀" {
            emojiDefinitionLabel.text = "A nice smile!"
            emojiName.text = "Classic Smiley"
            birthLabel.text = "Birth Year: 2010"
            categoryLabel.text = "Category: Faces"
        }
        
        if emoji == "💩" {
            emojiDefinitionLabel.text = "A smelly poo poo by Irwyn!"
            emojiName.text = "Poop"
            birthLabel.text = "Birth Year: 2011"
            categoryLabel.text = "Category: Faces"
        }
        
        if emoji == "🏎" {
            emojiDefinitionLabel.text = "A weird Swift's formula car!"
            emojiName.text = "Race car"
            birthLabel.text = "Birth Year: 2012"
            categoryLabel.text = "Category: Vehicle"
        }
        
        if emoji == "🛰" {
            emojiDefinitionLabel.text = "A little satellite to stalk you!"
            emojiName.text = "Satellite"
            birthLabel.text = "Birth Year: 2013"
            categoryLabel.text = "Category: Others"
        }
        
        if emoji == "🏟" {
            emojiDefinitionLabel.text = "A red stadium for sports!"
            emojiName.text = "Stadium"
            birthLabel.text = "Birth Year: 2014"
            categoryLabel.text = "Category: Others"
        }
        
        if emoji == "🥜" {
            emojiDefinitionLabel.text = "A roasted ground nut!"
            emojiName.text =  "Ground nut"
            birthLabel.text = "Birth Year: 2015"
            categoryLabel.text = "Category: Food"
        }
        
        if emoji == "🎷" {
            emojiDefinitionLabel.text = "A noisy saxophone!"
            emojiName.text = "Saxophone"
            birthLabel.text = "Birth Year: 2016"
            categoryLabel.text = "Category: Object"
        }
        
        if emoji == "🇲🇾" {
            emojiDefinitionLabel.text = "A country I love very much!"
            emojiName.text = "Malaysia"
            birthLabel.text = "Birth Year: 2017"
            categoryLabel.text = "Category: Flag"
        }
*/
        
    }

}
