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

    override func viewWillAppear(_ animated: Bool) {
        print("a tela 1 está pronta mas ainda não visível")
    }

    override func viewDidAppear(_ animated: Bool) {
        print("tela 1 já visível")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("a tela 1 desaparecerá em breve")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("a tela 1 já desapareceu")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("")
        // Dispose of any resources that can be recreated.
    }


}

