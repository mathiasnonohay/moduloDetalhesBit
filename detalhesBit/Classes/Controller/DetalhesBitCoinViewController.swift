//
//  DetalhesBitCoinViewController.swift
//  detalhesBit
//
//  Created by Mathias Almeida Nonohay on 1/21/21.
//

import UIKit

public class DetalhesBitCoinViewController: UIViewController {
    
    @IBOutlet weak var labelCoinValor: UILabel!
    @IBOutlet weak var buttonAddFavoritos: UIButton!
    @IBOutlet weak var labelCoinNome: UILabel!
    @IBOutlet weak var labelValorHor: UILabel!
    @IBOutlet weak var labelValorMes: UILabel!
    @IBOutlet weak var labelValorAno: UILabel!

    // MARK: - Atributos
    private var valor: Double!
    private var nome: String!
    private var valorHora: Double!
    private var valorMes: Double!
    private var valorAno: Double!

    // MARK: - Contructor
    public init(valor: Double, nome: String, valorHora: Double, valorMes: Double, valorAno: Double) {
        self.valor = valor
        self.nome = nome
        self.valorHora = valorHora
        self.valorMes = valorMes
        self.valorAno = valorAno
        super.init(nibName: "DetalhesBitCoinViewController", bundle: Bundle(for: DetalhesBitCoinViewController.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        coinDetalhes(self.valor, self.nome, self.valorHora, self.valorMes, self.valorAno)
    }
    
    private func coinDetalhes(_ valor: Double, _ nome: String, _ valorHora: Double, _ valorMes: Double, _ valorAno: Double) {
        labelCoinValor.text = "$ \(valor)"
        labelCoinNome.text = nome
        labelValorHor.text = "$ \(valorHora)"
        labelValorMes.text = "$ \(valorMes)"
        labelValorAno.text = "$ \(valorAno)"
    }
}
