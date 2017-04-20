//
//  ViewController.swift
//  99 Red Balloons Challenge
//
//  Created by Craig Martin on 1/17/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonImage: UIImageView!
    @IBOutlet weak var balloonTextLabel: UILabel!
    
    var myBalloons:[Balloon] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myBalloon = Balloon()
        myBalloon.image = UIImage(named: "RedBalloon1.jpg")
        
        myBalloons.append(myBalloon)
        
        balloonImage.image = myBalloon.image
        balloonTextLabel.text = myBalloon.balloonCount()
        
        var secondBalloon = Balloon()
        secondBalloon.image = UIImage(named: "RedBalloon2.jpg")
        
        var thirdBalloon = Balloon()
        thirdBalloon.image = UIImage(named: "RedBalloon3.jpg")
        
        var fourthBalloon = Balloon()
        fourthBalloon.image = UIImage(named: "RedBalloon4.jpg")
        
        myBalloons += [secondBalloon, thirdBalloon, fourthBalloon]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonPressed(sender: AnyObject) {
        
        var randomIndex:Int
        
        do {
            randomIndex = Int(arc4random_uniform(UInt32(myBalloons.count)))
        } while currentIndex == randomIndex
        
        let balloon = myBalloons[randomIndex]
        
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCurlUp, animations: {
            
            self.balloonImage.image = balloon.image
            self.balloonTextLabel.text = balloon.balloonCount()
            
            }, completion: {
                (finished:Bool) -> () in
        })
        randomIndex == currentIndex
    }

}

