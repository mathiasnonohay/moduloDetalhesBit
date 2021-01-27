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
    
    private var valorBit: Double
    private var idBit: String
    private var nomeBit: String
//    private var imageBit: UIImage
    
    public init(valorBit: Double, idBit: String, nomeBit: String) {
        self.valorBit = valorBit
        self.idBit = idBit
        self.nomeBit = nomeBit
//        self.imageBit = imageBit
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
        
        for _ in 1...25{
            let str = self.nomeBit
            arrStrin.append(str)
        }
        collectionViewFavoritos.reloadData()
    }
}

extension FavoritosViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    private func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrStrin.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celula = collectionView.dequeueReusableCell(withReuseIdentifier: celulaFavoritosIdentifier, for: indexPath) as!
            FavoritosCollectionViewCell
        let str = arrStrin[indexPath.row]
        celula.nomeBit.text = str
        celula.idBit.text = "ID"
        celula.valorBit.text = "\(self.valorBit)"
//        celula.imageBit.image = self.imageBit
        
        return celula
    }
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let str = arrStrin[indexPath.row]
        let controller = DetalhesBitCoinViewController(valor: 10, nome: "MAT", valorHora: 12000.0, valorMes: 13000.0, valorAno: 20930009.0, favorito: true)
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
