//
//  FavoritosollectionViewCell.swift
//  detalhesBit
//
//  Created by Mathias Almeida Nonohay on 1/22/21.
//

import UIKit

public class FavoritosCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelAssetId: UILabel!
    @IBOutlet weak var labelValor: UILabel!
    
    override public func awakeFromNib() {
        super.awakeFromNib()
    }
}
