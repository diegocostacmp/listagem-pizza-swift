//
//  vcCardapio.swift
//  MyPhome
//
//  Created by Aluno on 22/03/2019.
//  Copyright © 2019 kcfg23. All rights reserved.
//

import UIKit

class VCCardapio:
    UIViewController,
    UITableViewDataSource,
    UITabBarDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return baseDados.itensCardapio[section].count
    }
    
    
    let baseDados = BaseDados()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return baseDados.cardapio.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return baseDados.retornaSecao(numero: section)
    }
    
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let novaCelula  = tableView.dequeueReusableCell(withIdentifier: "celula") as! CellController
        
        novaCelula.vrImagemView.image = UIImage(named: baseDados.retornaItemSecao(secao: indexPath.section, linha: indexPath.item))
        
        novaCelula.vrLabel.text = baseDados.retornaItemSecao(secao: indexPath.section, linha: indexPath.item)
        
        return novaCelula
    }
}
