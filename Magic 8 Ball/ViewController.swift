//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Shreyas Zagade on 3/1/18.
//  Copyright © 2018 Shreyas Zagade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var ansArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonClicked(_ sender: UIButton) {
        
        change8BallImage()
        
    }
    
    func change8BallImage(){
        let randomNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ansArray[randomNumber])
    }
    
}

