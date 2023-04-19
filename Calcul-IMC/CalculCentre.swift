//
//  CalculCentre.swift
//  Calcul-IMC
//
//  Created by Caleb Mawji on 2023-04-19.
//

import UIKit

struct CalculCentre
{
    var imc:IMC?
    func getIMCValue()->String
    {
        let imc2decimal=String(format: "%.1f",imc?.value ?? 0.0)
        return imc2decimal
    }
    func getConseil()->String
    {
        return imc?.conseil ?? "Pas de conseil"
    }
    func getColor()->UIColor
    {
        return imc?.color ?? UIColor.white
    }
    
    
    mutating func calculerIMC(taille:Float, poids:Float)
    {
        let imcValue = poids / (taille * taille)
        if imcValue < 18.5
        {
            imc=IMC(value: imcValue, conseil: "Besoin de plus d'énergie", color: UIColor.systemYellow)
        }
        else if imcValue < 24.9
        {
            imc=IMC(value: imcValue, conseil: "Bravo - Bonne Santé", color: UIColor.systemGreen)
        }
        else
        {
            imc=IMC(value: imcValue, conseil: "Attention! Trop d'énergie", color: UIColor.systemRed)
        }
    }
}
