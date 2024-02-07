//
//  VillainDetalViewController.swift
//  BondVillains
//
//  Created by Weili Yi on 2024/2/7.
//  Copyright © 2024 Udacity. All rights reserved.
//

import UIKit

class VillainDetalViewController: UIViewController {
    
    var villain: Villain!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        self.imageView.image = UIImage(named: villain.imageName)
        self.imageLabel.text = villain.name
    }
    
}
