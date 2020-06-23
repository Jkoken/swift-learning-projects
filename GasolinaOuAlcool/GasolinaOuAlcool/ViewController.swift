//
//  ViewController.swift
//  GasolinaOuAlcool
//
//  Created by Jackson Wandekoken on 01/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultadoLegenda: UILabel!
    @IBOutlet weak var precoAlcoolCampo: UITextField!
    @IBOutlet weak var precoGasolinaCampo: UITextField!
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        if let precoAlcool = precoAlcoolCampo.text{
            if let precoGasolina = precoGasolinaCampo.text{
                //Validar Campos - o Resultado vai retornar verdadeiro se o usuario preencheu todos os campos e falso se deixou um ou mais em branco.
                let validCampos = self.validarCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                if validCampos{
                    //se retornar true - calcula o melhor combustivel
                    self.calcularMelhorPreco(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                }else {//se retornar false -
                    resultadoLegenda.text = "Digite os preços para calcular!"
                }
            }
        }
    }
    func calcularMelhorPreco(precoAlcool: String, precoGasolina: String){
        //Converter valores para numéricos -
        if let valorAlcool = Double(precoAlcool){ //ele só cai no if se for possível converter o precoAlcool para Double
            if let valorGasolina = Double(precoGasolina){
                /* Fazer cálculo (precoAlcool/precoGasolina)
                   Se resultado >= 0.7 melhor utilizar Gasolina.
                   Senão melhor utilizar Álcool */
                let resultadoPreco = valorAlcool/valorGasolina
                if resultadoPreco >= 0.7{
                    self.resultadoLegenda.text = "Melhor utilizar a Gasolina!"
                }else{
                    self.resultadoLegenda.text = "Melhor utilizar o Álcool!"
                }
            }
        }
    }
    
    //função criada para validação de valores. O cálculo só pode ser realizado se os dois valores forem inseridos. Cajo um não seja, o valor mudará de true para false.
    func validarCampos(precoAlcool: String, precoGasolina: String) -> Bool{
        var camposValidados = true
        if precoAlcool.isEmpty {
            camposValidados = false
        }else if precoGasolina.isEmpty {
            camposValidados = false
        }
        return camposValidados
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

