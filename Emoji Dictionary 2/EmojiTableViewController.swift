//
//  EmojiTableViewController.swift
//  Emoji Dictionary 2
//
//  Created by Lau Chin Wei on 16/12/2017.
//  Copyright © 2017 Yun. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.theEmoji) - \(emoji.category) (\(emoji.birthYear))"
        
        return cell
        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let  emojiDefVC = segue.destination as! EmojiDefinitionViewController
        emojiDefVC.emoji = sender as! Emoji
    }
    
// ["😀","💩","🏎","🛰","🏟","🥜","🎷","🇲🇾"]
    
    func createEmojis() -> [Emoji] {
        let smiley = Emoji()
        smiley.theEmoji = "😀"
        smiley.def = "A sweet smiling face!"
        smiley.birthYear = 2010
        smiley.category = "Faces"
        smiley.name = "Classic Smiley"
        
        let poop = Emoji()
        poop.theEmoji = "💩"
        poop.def = "A smelly poop by Irwyn!"
        poop.birthYear = 2011
        poop.category = "Faces"
        poop.name = "Poop"
        
        let raceCar = Emoji()
        raceCar.theEmoji = "🏎"
        raceCar.def = "A weird Formula car sponsored by Swift!"
        raceCar.birthYear = 2012
        raceCar.category = "Vehicle"
        raceCar.name = "Formula Car"
        
        let satellite = Emoji()
        satellite.theEmoji = "🛰"
        satellite.def = "An always-watching device!"
        satellite.birthYear = 2013
        satellite.category = "Object"
        satellite.name = "Satellite"
        
        let stadium = Emoji()
        stadium.theEmoji = "🏟"
        stadium.def = "A red interior stadium. Probably it is Anfield!"
        stadium.birthYear = 2014
        stadium.category = "Others"
        stadium.name = "Stadium"
        
        let groundnut = Emoji()
        groundnut.theEmoji = "🥜"
        groundnut.def = "A food which looks like a squirrel's poop but it is called ground nut!"
        groundnut.birthYear = 2015
        groundnut.category = "Food"
        groundnut.name = "Ground nut"
        
        let saxophone = Emoji()
        saxophone.theEmoji = "🎷"
        saxophone.def = "A musical instrument only the largest lungs can play. Seeing this makes me out of breath!"
        saxophone.birthYear = 2016
        saxophone.category = "Object"
        saxophone.name = "Saxophone"
        
        let malaysia = Emoji()
        malaysia.theEmoji = "🇲🇾"
        malaysia.def = "A country which I call home! Never been a boring country with the clowns of politics around 24/7!"
        malaysia.birthYear = 2017
        malaysia.category = "Flag"
        malaysia.name = "Malaysia"
        
        return [smiley, poop, raceCar, satellite, stadium, groundnut, saxophone, malaysia]
    }
}
