//
//  secondViewController.swift
//  segueApp
//
//  Created by Ahmet Hakan Altıparmak on 8.08.2024.
//

import UIKit

class secondViewController: UIViewController {
    
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Name: \(myName)"

    }
    

    

}
