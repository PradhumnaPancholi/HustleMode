//
//  ViewController.swift
//  Hustle Mode
//
//  Created by user148657 on 12/26/18.
//  Copyright © 2018 user148657. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var activatedLbl: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        //to load file on player//
        do{
           player = try AVAudioPlayer(contentsOf: url)
           player.prepareToPlay()
        }catch let error as NSError{
            print(error.description)
        }
    }
    
    //when power button is pressed//
    @IBAction func powerButtonPushed(_ sender: Any) {
        cloudHolder.isHidden = false
        powerButton.isHidden = true
        darkBlueBG.isHidden = true
        
        //to play music//
        player.play()		
        
        //for rocket animation//
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 150,				 width: 414, height: 410)
        }) { (finished) in
            //to make labels un-hidden//
            self.hustleLbl.isHidden = false
            self.activatedLbl.isHidden = false
        }
    }
    


}

