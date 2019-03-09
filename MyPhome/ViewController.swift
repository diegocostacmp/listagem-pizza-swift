//
//  ViewController.swift
//  MyPhome
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 kcfg23. All rights reserved.
//

import UIKit

// classe que controla a lógica e estado de uma tela
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("telaMain foi carregada")
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func alterarTexto(_ sender: UIButton) {
        vrLabel.text = "Olá Mundo!"
    }
    
    @IBOutlet weak var vrLabel: UILabel!
    
}
