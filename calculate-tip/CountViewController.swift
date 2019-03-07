//
//  CountViewController.swift
//  CountTips
//
//  Created by Rémi Boissise on 14/06/2018.
//  Copyright © 2018 Rémi Boissise. All rights reserved.
//

import UIKit

class CountViewController: ViewController {

    @IBOutlet var BackButtonLabel: UIView!
    @IBOutlet weak var additionLabel: UILabel!
    @IBOutlet weak var tipsLabel: UILabel!
    @IBOutlet weak var amountSlider: UISlider!
    // On définit un taux de 12% pour les tips
    var tipsTaux = 0.12
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        updateDisplay()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()
        // Do any additional setup after loading the view.
    }
    
    func updateDisplay()
    {
        let montantAddition = amountSlider.value
        
        let montantPourboire = Double(montantAddition) * tipsTaux
        additionLabel.text = String(Int(montantAddition)) + " " + "€"
        tipsLabel.text = String(Int(montantPourboire)) + " " + "€"
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
