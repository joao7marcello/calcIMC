//
//  ViewController.swift
//  calculadoraIMC
//
//  Created by Student on 03/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pesoInput: UITextField!
    
    
    @IBOutlet weak var alturaInput: UITextField!
    
    
    @IBAction func calcular(_ sender: Any) {
        let pesoDouble = Double(pesoInput.text!)
        let alturaDouble = Double(alturaInput.text!)
        
        if (pesoDouble != nil && alturaDouble != nil){
        
            let calculo = pesoDouble! / (alturaDouble! * alturaDouble!)
            resultado.text = String(format: "%.1f", calculo)
        } else {
            AlertView()
        }
        
        
    }
    
    func AlertView(){
        let alert = UIAlertController(title: "Alerta", message: "Informe o Peso e a Altura", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var resultado: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

