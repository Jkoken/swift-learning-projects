//
//  DetalhesViewController.swift
//  CaraOuCoroa
//
//  Created by Jackson Wandekoken on 03/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {

    var randomNumber: Int = 0 // ou !, pois com o ! vc diz que sempre terá algo lá.
    @IBOutlet weak var moedaImagem: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if randomNumber == 0 { //cara
           moedaImagem.image = #imageLiteral(resourceName: "moeda_cara");
        }else { //coroa
           moedaImagem.image = #imageLiteral(resourceName: "moeda_coroa");
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
