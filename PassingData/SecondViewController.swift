//
//  SecondViewController.swift
//  PassingData
//
//  Created by Kritima Kukreja on 2020-03-03.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let nm = name
        {
            self.lblWelcome.text = "Welcome, \(nm)"
        }
        else
        {
            self.lblWelcome.text = "No Name Sent From First VC"
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
