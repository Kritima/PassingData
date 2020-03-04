//
//  ViewController.swift
//  PassingData
//
//  Created by Kritima Kukreja on 2020-03-03.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var pickerCountry: UIPickerView!
    
    var countryList = ["India", "Canada", "USA", "UK", "Sri Lanka", "Nepal", "Russia", "Pakistan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerCountry.delegate = self
        pickerCountry.dataSource = self
    }
    
    
    @IBAction func btnGoNext(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(identifier: "secondVC") as! SecondViewController
        
        if let name = self.txtName.text
        {
            secondVC.name = name
            
            self.navigationController?.pushViewController(secondVC, animated: true)
            self.navigationItem.hidesBackButton=true;
            // self.present(secondVC, animated: true, completion: nil)
        }
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.countryList.count
    }
    
}

