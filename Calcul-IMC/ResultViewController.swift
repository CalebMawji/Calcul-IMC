//
//  ResultViewController.swift
//  Calcul-IMC
//
//  Created by Caleb Mawji on 2023-04-19.
//

import UIKit

class ResultViewController: UIViewController
{
    var imcValue:String?
    var conseilValue:String?
    var color:UIColor?
    
    @IBOutlet weak var imcLabel: UILabel!
    
    @IBOutlet weak var conseilLabel: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imcLabel.text=imcValue
        conseilLabel.text=conseilValue
        conseilLabel.textColor=color
        imcLabel.textColor=color

        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculerPressed(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
}
