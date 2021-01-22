//
//  CoinViewController.swift
//  detalhesBit
//
//  Created by Mathias Almeida Nonohay on 1/22/21.
//

import UIKit

public class CoinView: UIView{

    @IBOutlet weak var labelCoinValor: UILabel!
    @IBOutlet weak var buttonAddFavoritos: UIButton!
    @IBOutlet weak var labelCoinNome: UILabel!
    @IBOutlet weak var labelValorHor: UILabel!
    @IBOutlet weak var labelValorMes: UILabel!
    @IBOutlet weak var labelValorAno: UILabel!
    
    public func coinDetalhes(valor: Double, nome: String, valorHora: Double, valorMes: Double, valorAno: Double) {
        self.labelCoinValor.text = "$ \(valor)"
        self.labelCoinNome.text = nome
        self.labelValorHor.text = "$ \(valorHora)"
        self.labelValorMes.text = "$ \(valorMes)"
        self.labelValorAno.text = "$ \(valorAno)"
    }
    
    
    
}
