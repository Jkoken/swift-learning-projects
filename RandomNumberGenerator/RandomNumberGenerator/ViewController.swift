//
//  ViewController.swift
//  RandomNumberGenerator
//
//  Created by Jackson Wandekoken on 27/03/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLegend: UILabel!
    
    
    @IBAction func inputButton(_ sender: Any) {
        
        var number = arc4random_uniform(100)
        resultLegend.text = String(number)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

