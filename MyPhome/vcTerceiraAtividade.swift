//
//  vcTerceiraAtividade.swift
//  MyPhome
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 kcfg23. All rights reserved.
//

import UIKit

class vcTerceiraAtividade: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return paradigmas.count
    }
    
    var paradigmas = ["Estruturas", "Orientadas a Objetos"]
    var vetorLinguagens = [["C", "Pascal"], ["Java", "Swift", "C Charp"]]
    var paradigmaSelecionado = 0
   
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (component == 0) {
            return paradigmas.count
        }
        return vetorLinguagens[pickerView.selectedRow(inComponent: 0)].count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (component == 0) {
            return paradigmas[row]
        } else {
            let selecionado = pickerView.selectedRow(inComponent: 0)
            return vetorLinguagens[selecionado][row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (component == 0) {
            pickerView.reloadComponent(1)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
