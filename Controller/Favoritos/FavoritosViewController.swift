//
//  FavoritosViewController.swift
//  detalhesBit
//
//  Created by Mathias Almeida Nonohay on 1/22/21.
//

import UIKit

public class FavoritosViewController: UIViewController {

    @IBOutlet weak var collectionViewFavoritos: UICollectionView!
    
    private let celulaFavoritos = "celulaFavoritos"
    private var arrStrin: Array<String> = []
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        let nibCelula = UINib(nibName: celulaFavoritos, bundle: Bundle(for: FavoritosollectionViewCell.self))
        collectionViewFavoritos.register(nibCelula, forCellWithReuseIdentifier: celulaFavoritos)
        
        for _ in 1...25{
            let str = "Teste"
            arrStrin.append(str)
        }
        collectionViewFavoritos.reloadData()
    }
}

extension FavoritosViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    private func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arrStrin.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrStrin.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celula = collectionView.dequeueReusableCell(withReuseIdentifier: celulaFavoritos, for: indexPath) as!
            FavoritosollectionViewCell
        let str = arrStrin[indexPath.row]
        celula.labelNome.text = str
        celula.labelAssetId.text = "BTC"
        celula.labelValor.text = "$ 31,102.81"
        
        return celula
    }
}
