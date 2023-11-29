//
//  ViewController.swift
//  CatApp
//
//  Created by Murat on 28.11.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var pickerView: UIPickerView!
    // Horizantel ScroolView -> Images
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var fifthImageView: UIImageView!
    
    //Vertifical ScroolView -> Labels
    
    @IBOutlet weak var catNameLabel: UILabel!
    @IBOutlet weak var catTemperamentLabel: UILabel!
    @IBOutlet weak var catPlotLabel: UITextView!
    @IBOutlet weak var catOriginLabel: UILabel!
    
    //Cat Affection Level and Buttons
    @IBOutlet weak var catAffectionLevel: UILabel!
    @IBOutlet weak var AFL1: UIButton!
    @IBOutlet weak var AFL2: UIButton!
    @IBOutlet weak var AFL3: UIButton!
    @IBOutlet weak var AFL4: UIButton!
    @IBOutlet weak var AFL5: UIButton!
    
    //Cat Adatability Level and Buttons
    @IBOutlet weak var catAdaptabilityLevel: UILabel!
    @IBOutlet weak var ALB1: UIButton!
    @IBOutlet weak var ALB2: UIButton!
    @IBOutlet weak var ALB3: UIButton!
    @IBOutlet weak var ALB4: UIButton!
    @IBOutlet weak var ALB5: UIButton!
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

