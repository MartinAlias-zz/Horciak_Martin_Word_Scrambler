//
//  LeaderBoardViewController.swift
//  Horciak_Martin_Word_Scrambler
//
//  Created by Martin Horciak on 2018-10-09.
//  Copyright © 2018 Martin Horciak. All rights reserved.
//

import UIKit


var leaderboardpoints:[Int] = [10,50,20,60,200,100,400,600,800,2000]
    //
var leaderboardnames:[String] = ["user10", "user8", "user9", "user7", "user5", "user6", "user4", "user3", "user2", "user1", ]
    //

class LeaderBoardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //Table View Outlet
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leaderboardnames.count
    }
    
    //Creates new cells and applies the attributes (Name and Score) to the Varying Cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        myCell.textLabel?.text = leaderboardnames[indexPath.row]
        myCell.detailTextLabel?.text = String(leaderboardpoints[indexPath.row])
        return myCell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //Bubble sort that aligns the saved data into order from greatest to least which will then be displayed
    override func viewDidAppear(_ animated: Bool) {
        
        var isswapped = true
        
        while isswapped == true {
            isswapped = false
            
            for index in 0...(leaderboardpoints.count - 2) {
                if leaderboardpoints[index] < leaderboardpoints[index + 1] {
                    leaderboardpoints.swapAt(index, (index + 1))
                    leaderboardnames.swapAt(index, (index + 1))
                    isswapped = true
                }
            }
            
        }
        //Saves data and removes the last if they get off the leader board value(highscore isnt big enough
        leaderboardpoints.remove(at: leaderboardpoints.count - 1)
        leaderboardnames.remove(at: leaderboardnames.count - 1)
        saveData.set(leaderboardnames, forKey:"leaderboardnamelist")
        saveData.set(leaderboardpoints, forKey:"leaderboardpointlist")
        tableView.reloadData()
        print(leaderboardnames)
        print(leaderboardpoints)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
