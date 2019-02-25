//
//  ViewControllerStartViewController.swift
//  Horciak_Martin_Word_Scrambler
//
//  Created by Martin Horciak on 2018-10-04.
//  Copyright © 2018 Martin Horciak. All rights reserved.
//

import UIKit
//Creating Global variables that have a scope of the whole prjoect
var name = ""
var totalScore = 0
var levelCount = 0
class ViewControllerStartViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //Starts the game off at level one for a proper play through
    @IBAction func startGamePressed(_ sender: Any) {
        levelCount = 1
        performSegue(withIdentifier: "skeet", sender: nil)
    }
    //Assigns saved data into the table view as [String], and [Int] values and saves the names and scores
    @IBAction func leaderBoardPressed(_ sender: Any) {
        if let loadnameArray:[String] = UserDefaults.standard.value(forKey: "leaderboardnamelist") as? [String] {
            leaderboardnames = loadnameArray
        }
        if let loadscoreArray:[Int] = UserDefaults.standard.value(forKey: "leaderboardpointlist") as? [Int] {
            leaderboardpoints = loadscoreArray
        }
        leaderboardnames.append(name)
        leaderboardpoints.append(totalScore)
        saveData.set(leaderboardnames, forKey:"leaderboardnamelist")
        saveData.set(leaderboardpoints, forKey:"leaderboardpointlist")
        performSegue(withIdentifier: "ToLeaderboard", sender: nil)
    }
    
    
    
    
    
}
