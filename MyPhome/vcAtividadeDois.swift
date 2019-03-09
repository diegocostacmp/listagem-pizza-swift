//
//  vcAtividadeDois.swift
//  MyPhome
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 kcfg23. All rights reserved.
//

import UIKit

class vcAtividadeDois: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slider_(_ sender: UISlider) {
//        let vrSlider = sender as! UISlider
        self.view.alpha = CGFloat(sender.value)
    }
    
    @IBAction func handleSegmentControl(_ sender: UISegmentedControl) {
        switch (sender.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = UIColor.white
        case 1:
            self.view.backgroundColor = UIColor.yellow
        case 2:
            self.view.backgroundColor = UIColor.red
        case 3:
            self.view.backgroundColor = UIColor.orange
        case 4:
            self.view.backgroundColor = UIColor.green
        default:
            self.view.backgroundColor = UIColor.black
        }
    }
    
    @IBOutlet weak var scController: UISegmentedControl!
    @IBOutlet weak var sldrController: UISlider!
    
    @IBAction func stateComponent(_ sender: UISwitch) {
        scController.isEnabled = sender.isOn
        sldrController.isEnabled = sender.isOn
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
