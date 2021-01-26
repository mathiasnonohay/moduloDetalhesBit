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
        
//        let controller = DetalhesBitCoinViewController(valor: 10, nome: "MAT", valorHora: 12000.0, valorMes: 13000.0, valorAno: 20930009.0)
//        self.navigationController?.pushViewController(controller, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

