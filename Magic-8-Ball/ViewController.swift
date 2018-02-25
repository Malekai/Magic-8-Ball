//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by Malek on 2/25/18.
//  Copyright © 2018 Malek Minhajul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallIndex : Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBall()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        updateBall()
        
    }
    
    func updateBall() {
        
        randomBallIndex = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallIndex])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateBall()
        
    }
    
}

