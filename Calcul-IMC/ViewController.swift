//
//  ViewController.swift
//  Calcul-IMC
//
//  Created by Caleb Mawji on 2023-04-17.
//

import UIKit

class ViewController: UIViewController
{
    var calculCentre=CalculCentre()
    

    @IBOutlet weak var lblTaille: UILabel!
    
    
    @IBOutlet weak var lblPoids: UILabel!
    
    
    @IBOutlet weak var tailleSlider: UISlider!
    
    
    @IBOutlet weak var poidsSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tailleSliderChanged(_ sender: UISlider)
    {
        let taille = String(format:"%.2f",sender.value)
        lblTaille.text = "\(taille) m"
    }
    
    @IBAction func poidsSliderChanged(_ sender: UISlider)
    {
        let poids = String(format:"%.0f",sender.value)
        lblPoids.text = "\(poids) Kg"
    }
    
    
    @IBAction func calculerPressed(_ sender: UIButton)
    {
        let maTaille = tailleSlider.value
        let monPoids = poidsSlider.value
        calculCentre.calculerIMC(taille: maTaille, poids: monPoids)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "goToResult"
        {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.imcValue=calculCentre.getIMCValue()
            destinationVC.conseilValue=calculCentre.getConseil()
            destinationVC.color=calculCentre.getColor()
        }
    }
}
