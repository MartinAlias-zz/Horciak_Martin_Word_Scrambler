//
//  LevelSelectorViewController.swift
//  Horciak_Martin_Word_Scrambler
//
//  Created by Martin Horciak on 2018-10-09.
//  Copyright © 2018 Martin Horciak. All rights reserved.
//

import UIKit

class LevelSelectorViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
/* Each below function simply performs the segue to the main game and sets the level to the
 desired amount*/
    @IBAction func levelOnePressed(_ sender: Any) {
        levelCount = 1
        performSegue(withIdentifier: "yeet", sender: nil)
    }
    
    @IBAction func levelTwoPressed(_ sender: Any) {
        levelCount = 2
        performSegue(withIdentifier: "yeet", sender: nil)
    }
    
    @IBAction func levelThreePressed(_ sender: Any) {
        levelCount = 3
        performSegue(withIdentifier: "yeet", sender: nil)
    }
    
    @IBAction func levelFourPressed(_ sender: Any) {
        levelCount = 4
        performSegue(withIdentifier: "yeet", sender: nil)
    }
    
    @IBAction func levelFivePressed(_ sender: Any) {
        levelCount = 5
        performSegue(withIdentifier: "yeet", sender: nil)
    }
    
    @IBAction func levelSixPressed(_ sender: Any) {
        levelCount = 6
        performSegue(withIdentifier: "yeet", sender: nil)
    }
    
    @IBAction func levelSevenPressed(_ sender: Any) {
        levelCount = 7
        performSegue(withIdentifier: "yeet", sender: nil)
    }
    
    
}
