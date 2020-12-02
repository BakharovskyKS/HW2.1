//
//  ViewController.swift
//  BakharovskyKS_HW2.1
//
//  Created by Кирилл Бахаровский on 12/2/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewRed: UIView!
    @IBOutlet var viewYellow: UIView!
    @IBOutlet var viewGreen: UIView!
    @IBOutlet var startNextButton: UIButton!
    var valueColors = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logicButton(_ sender: Any) {
        valueColors += 1
        if valueColors == 1 {
            viewRed.alpha = 1
            viewGreen.alpha = 0.3
            startNextButton.setTitle("Next color", for: .normal)
            
        }
        if valueColors == 2 {
            viewRed.alpha = 0.3
            viewYellow.alpha = 1
        }
        if valueColors == 3 {
            viewYellow.alpha = 0.3
            viewGreen.alpha = 1
            valueColors = 0
        }
    }
    
}

