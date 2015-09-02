//
//  ViewController.swift
//  Ninja Gold
//
//  Created by Wei Chung Chuo on 8/10/15.
//  Copyright © 2015 Wei Chung Chuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalGold: UILabel!
    @IBOutlet weak var farmLabel: UILabel!
    @IBOutlet weak var caveLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var casinoLabel: UILabel!
    var totalGoldCount:Int = 0
    var currentGold:Int = 0
    //var totalGoldCountString:String = ""
    //randNumberString = String(randNumber)
    //randNumberLabel.text = randNumberString
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalGold.text = "0"
        farmLabel.hidden = true
        caveLabel.hidden = true
        houseLabel.hidden = true
        casinoLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func buildingButton(sender: UIButton) {
        print(sender.tag)
        if sender.tag == 1 {
            farmLabel.hidden = false
            caveLabel.hidden = true
            houseLabel.hidden = true
            casinoLabel.hidden = true
            currentGold = Int(arc4random_uniform(11) + 10)
            farmLabel.text = ("You earned \(currentGold) golds")
            totalGoldCount = totalGoldCount + currentGold
            totalGold.text = String(totalGoldCount)
        } else if sender.tag == 2 {
            farmLabel.hidden = true
            caveLabel.hidden = false
            houseLabel.hidden = true
            casinoLabel.hidden = true
            currentGold = Int(arc4random_uniform(6) + 5)
            caveLabel.text = ("You earned \(currentGold) golds")
            totalGoldCount = totalGoldCount + currentGold
            totalGold.text = String(totalGoldCount)
        } else if sender.tag == 3 {
            farmLabel.hidden = true
            caveLabel.hidden = true
            houseLabel.hidden = false
            casinoLabel.hidden = true
            currentGold = Int(arc4random_uniform(4) + 2)
            houseLabel.text = ("You earned \(currentGold) golds")
            totalGoldCount = totalGoldCount + currentGold
            totalGold.text = String(totalGoldCount)
        } else if sender.tag == 4 {
            farmLabel.hidden = true
            caveLabel.hidden = true
            houseLabel.hidden = true
            casinoLabel.hidden = false
            currentGold = Int(arc4random_uniform(51) + 0)
            casinoLabel.text = ("You earned \(currentGold) golds")
            totalGoldCount = totalGoldCount + currentGold
            totalGold.text = String(totalGoldCount)
        }
    }
    
    @IBAction func resetButton(sender: UIButton) {
        farmLabel.hidden = true
        caveLabel.hidden = true
        houseLabel.hidden = true
        casinoLabel.hidden = true
        totalGoldCount = 0
        totalGold.text = String(totalGoldCount)
    }
    
}

