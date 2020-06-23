//
//  ViewController.swift
//  MonthsOfTheYear
//
//  Created by Jackson Wandekoken on 27/03/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var legendMonth: UILabel!
    
    
    @IBAction func MonthGenerator(_ sender: Any) {
        
        var meses = [Int: String]()
        meses[1] = "Janeiro"
        meses[2] = "Fevereiro"
        meses[3] = "Março"
        meses[4] = "Abril"
        meses[5] = "Maio"
        meses[6] = "Junho"
        meses[7] = "Julho"
        meses[8] = "Agosto"
        meses[9] = "Setembro"
        meses[10] = "Outubro"
        meses[11] = "Novembro"
        meses[12] = "Dezembro"
        
        let mesAno = arc4random_uniform(11)
        
        legendMonth.text = meses[Int(mesAno)]
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

