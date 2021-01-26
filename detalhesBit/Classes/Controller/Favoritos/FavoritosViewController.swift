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
    
    public init() {
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
            let str = "Teste"
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
//        let str = arrStrin[indexPath.row]
//        celula.labelNome.text = str
//        celula.labelAssetId.text = "BTC"
//        celula.labelValor.text = "$ 31,102.81"
        
        return celula
    }
}
