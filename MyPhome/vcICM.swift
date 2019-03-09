//
//  vcICM.swift
//  MyPhome
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 kcfg23. All rights reserved.
//

import UIKit

class vcICM: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var tfAltura: UITextField!
    @IBOutlet weak var tfPeso: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    
    @IBAction func btnCalculaResultado(_ sender: Any) {
        let altura: Double = Double(tfAltura.text!)!
        let peso: Double = Double(tfPeso.text!)!

        let resultado_ = calculaIMC_(altura_: altura, peso_: peso)
        
        lblResultado.text = "\(resultado_.IMC) = \(resultado_.MSG)"
    }
    
    func calculaIMC_(altura_: Double, peso_: Double)-> (IMC: Double, MSG: String) {
        let imc_: Double = (peso_ / (pow(altura_ , 2))) * 10000

/*        var tblIMC = (
            x10_menor18_5: "abaixo do peso",
            x20_entre18_5_e_24_9: "peso ideal",
            x30_entre25_0_e_29_9: "levemente acima do peso",
            x40_entre30_0_e_34_9: "obesidade grau 1",
            x50_entre35_0_e_39_9: "obesidade grau 2 ",
            x60_maior: "obesidade grau 3"
        )
*/
        let msg_ = "X"
/*
        if (imc_ < 18.5)
            msg_ = tblIMC.x10_menor18_5
         else
            if (imc_ >= 18.5 && imc_ <= 24.9)
                msg_ = tblIMC.x20_entre18_5_e_24_9
            else
                if (imc_ >= 25.0 && imc_ <= 29.9)
                    msg_ = tblIMC.x
*/
            
        return (imc_, msg_)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


/*
 label
 switch (uma action)
 imageView
 segmentedController (configurar quantidade de tabs, uma action)
 slider (variação de 0 a 1, uma action)
 */
