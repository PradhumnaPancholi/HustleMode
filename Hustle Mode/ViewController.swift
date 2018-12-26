//
//  ViewController.swift
//  Hustle Mode
//
//  Created by user148657 on 12/26/18.
//  Copyright © 2018 user148657. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var activatedLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //when power button is pressed//
    @IBAction func powerButtonPushed(_ sender: Any) {
        cloudHolder.isHidden = false
        powerButton.isHidden = true
        darkBlueBG.isHidden = true
    }
    


}

