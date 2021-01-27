//
//  ViewController.swift
//  detalhesBit
//
//  Created by mathiasnonohay on 01/21/2021.
//  Copyright (c) 2021 mathiasnonohay. All rights reserved.
//

import UIKit
import detalhesBit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let controllerFavoritos = FavoritosViewController(valorBit: 100000, idBit: "BTC", nomeBit: "BitCoin")
        self.navigationController?.pushViewController(controllerFavoritos, animated: true)
        
//        let controller = DetalhesBitCoinViewController(10, "MAT", 12000.0, 13000.0, 20930009.0, true)
//        self.navigationController?.pushViewController(controller, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
