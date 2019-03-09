//
//  SegundaTelaViewController.swift
//  MyPhome
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 kcfg23. All rights reserved.
//

import UIKit

class SegundaTelaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("tela 2 foi carregada")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("a tela 2 está pronta mas ainda não visível")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("tela 2 já visível")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("a tela 2 desaparecerá em breve")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("a tela 2 já desapareceu")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("")
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var vrCampoDeTexto: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        vrCampoDeTexto.resignFirstResponder()
    }
    
    @IBAction func voltar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
