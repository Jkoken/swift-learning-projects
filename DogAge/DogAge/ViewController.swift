//
//  ViewController.swift
//  DogAge
//
//  Created by Jackson Wandekoken on 26/03/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var legendAgeDog: UILabel!
    @IBOutlet weak var insertAge: UITextField!
    
    
    @IBAction func ageDiscover(_ sender: Any) {
        
        let age = Int(insertAge.text!)! * 7
        legendAgeDog.text = "A idade humana do seu cachorro é: " + String(age)
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

