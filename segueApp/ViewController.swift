//
//  ViewController.swift
//  segueApp
//
//  Created by Ahmet Hakan Altıparmak on 8.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad func called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear func called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear func called")
        firstTextField.text = ""
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear func called")
    }

    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisapeear func called")
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    @IBAction func nextClicked(_ sender: Any) {
        
        userName = firstTextField.text!
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"
        {
            let destinationVC = segue.destination as! secondViewController
            destinationVC.myName = userName
        }
    }
}

