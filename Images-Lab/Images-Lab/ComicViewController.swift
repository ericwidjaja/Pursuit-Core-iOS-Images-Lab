//
//  ComicViewController.swift
//  Images-Lab
//
//  Created by Eric Widjaja on 9/6/19.
//  Copyright © 2019 Eric Widjaja. All rights reserved.
//

import UIKit

class comicViewController: UIViewController {
    
    @IBOutlet weak var comicImage: UIImageView!
    
    @IBOutlet weak var comicStepper: UIStepper!
    
    @IBOutlet weak var comicTextField: UITextField!
    
    @IBOutlet weak var mostRecentComic: UIButton!
    
    @IBOutlet weak var randomComic: UIButton!
    
    
    var comicEdition: XKCDComic!
    
    private func loadData(){
        XKCDComic.getComic { (result) in
            DispatchQueue.main.async {
                switch result {
                case .failure(let error):
                    print(error)
                case .success(let comicEdition):
                    self.comicEdition = comicEdition
                }
            }
        }
    }
    
    override func viewDidLoad() {
        loadData()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    
        
}

