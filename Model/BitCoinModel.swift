//
//  BitCoinModel.swift
//  detalhesBit
//
//  Created by Mathias Almeida Nonohay on 1/27/21.
//

import Foundation

public class BitCoinModel {
    
    public var valor: Double!
    public var nome: String!
    public var valorHora: Double!
    public var valorMes: Double!
    public var valorAno: Double!
    public var favorito: Bool!
    public var idBit: String
    public var imageBit: UIImage
    
    public init(_ valor: Double, _ nome: String, _ valorHora: Double, _ valorMes: Double, _ valorAno: Double, _ favorito: Bool, _ idBit: String, _ imageBit: UIImage) {
        self.valor = valor
        self.nome = nome
        self.valorHora = valorHora
        self.valorMes = valorMes
        self.valorAno = valorAno
        self.favorito = favorito
        self.idBit = idBit
        self.imageBit = imageBit
    }
    
}
