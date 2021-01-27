//
//  FavoritosViewController.swift
//  detalhesBit
//
//  Created by Mathias Almeida Nonohay on 1/22/21.
//

import UIKit

public class FavoritosViewController: UIViewController {

    @IBOutlet weak var collectionViewFavoritos: UICollectionView!
    
    private let celulaFavoritosIdentifier = "celulaFavoritos"
    private var arrStrin: Array<String> = []
    
    // MARK: - Atributos
    private var valor: Double!
    private var nome: String!
    private var valorHora: Double!
    private var valorMes: Double!
    private var valorAno: Double!
    private var favorito: Bool!
    private var numCelula: Int!

    // MARK: - Contructor
    public init(_ valor: Double, _ nome: String, _ valorHora: Double, _ valorMes: Double, _ valorAno: Double, _ favorito: Bool, _ numCelula: Int) {
        self.valor = valor
        self.nome = nome
        self.valorHora = valorHora
        self.valorMes = valorMes
        self.valorAno = valorAno
        self.favorito = favorito
        self.numCelula = numCelula
        super.init(nibName: "FavoritosViewController", bundle: Bundle(for: FavoritosViewController.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        collectionViewFavoritos.dataSource = self
        collectionViewFavoritos.delegate = self
        let nibCelula = UINib(nibName: "FavoritosCollectionViewCell", bundle: Bundle(for: FavoritosViewController.self))
        collectionViewFavoritos.register(nibCelula, forCellWithReuseIdentifier: celulaFavoritosIdentifier)
        collectionViewFavoritos.reloadData()
    }
}

extension FavoritosViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    private func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.numCelula
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celula = collectionView.dequeueReusableCell(withReuseIdentifier: celulaFavoritosIdentifier, for: indexPath) as!
            FavoritosCollectionViewCell
        celula.nomeBit.text = self.nome
        celula.idBit.text = "ID"
        celula.valorBit.text = "\(String(describing: self.valor))"
//        celula.imageBit.image = self.imageBit
        
        return celula
    }
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let str = arrStrin[indexPath.row]
        let controller = DetalhesBitCoinViewController(self.valor, self.nome, self.valorHora, self.valorMes, self.valorAno, self.favorito, self.numCelula)
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
