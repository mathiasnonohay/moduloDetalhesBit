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
       let controllerFavoritos = FavoritosViewController()
        self.navigationController?.pushViewController(controllerFavoritos, animated: true)
        
        //let controller = DetalhesBitCoinViewController("MAT", "$ 10", "MatCoin", "120000000000.0", "13000000000.0", "20930000000009.0", "ABC", true)
        //self.navigationController?.pushViewController(controller, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

