//
//  ViewController.swift
//  Images-Lab
//
//  Created by Eric Widjaja on 9/6/19.
//  Copyright © 2019 Eric Widjaja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var comics = [XKCDComic]() {
        didSet{
            
            a()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

