//
//  ViewController.swift
//  HelloWorld
//
//  Created by John Peppe on 5/21/17.
//  Copyright © 2017 John Peppe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var background: UIImageView!
   
    @IBOutlet weak var titleImage: UIImageView!
    
    @IBOutlet weak var welcomeBtn: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func welcomePressed(_ sender: Any) {
        background.isHidden = false
        titleImage.isHidden = false
        welcomeBtn.isHidden = true
    }
}

