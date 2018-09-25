//
//  ViewController.swift
//  RandomStartUp
//
//  Created by Claudia Contreras on 9/13/18.
//  Copyright © 2018 thecoderpilot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var startup = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"];
    var subject = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"];
    
    @IBOutlet weak var startUpLbl: UILabel!
    @IBOutlet weak var subjectLbl: UILabel!
    @IBOutlet weak var newIdeaButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func newideaButton(_ sender: Any) {
        let startUpMaxIndex = UInt32(startup.count)
        let subjectMaxIndex = UInt32(subject.count)
        
        let startUpRandomIndex = Int(arc4random_uniform(startUpMaxIndex))
        let subjectRandomIndex = Int(arc4random_uniform(subjectMaxIndex))
        
        startUpLbl.text = startup[startUpRandomIndex]
        subjectLbl.text = subject[subjectRandomIndex]
    }
    

}

