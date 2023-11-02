//
//  ViewController.swift
//  AnasooyaDice
//
//  Created by Anasooya on 02/11/23.
//

import UIKit

class ViewController: UIViewController {
    var Score : Int = 0
    let DiceImages = ["c1","c2","c3","c4","c5","c6"]

    @IBOutlet weak var lab: UILabel!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: Any) {
        img1.image = UIImage(named:DiceImages[Int(arc4random_uniform(6))])
        img2.image = UIImage(named:DiceImages[Int(arc4random_uniform(6))])
        lab.text = String(Score)
        if (img1.image == img2.image){
        
            Score+=1
        }
    }
    
}

