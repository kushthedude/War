//
//  ViewController.swift
//  Carda Game
//
//  Created by Kush Trivedi on 08/06/19.
//  Copyright © 2019 Kush Trivedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var LeftCardView: UIImageView!
    
    @IBOutlet weak var RightCardView: UIImageView!
    @IBOutlet weak var LeftLabel: UILabel!
    @IBOutlet weak var RightLabel: UILabel!
    
    var LeftScore = 0
    var RightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func DealButton(_ sender: Any) {
        let leftCard = Int.random(in: 2...14)
        let rightCard = Int.random(in: 2...14)
        
        LeftCardView.image = UIImage(named: "card\(leftCard)")
        RightCardView.image = UIImage(named: "card\(rightCard)")
        
        if leftCard >= rightCard {
            LeftScore = LeftScore + 1
            LeftLabel.text = String(LeftScore)
            
        }
        else {
            RightScore = RightScore + 1
            RightLabel.text = String(RightScore)
        }
    }
    
}

