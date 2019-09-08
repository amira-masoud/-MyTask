//
//  SecondVC.swift
//  MyTask
//
//  Created by Amira on 9/6/19.
//  Copyright © 2019 Amira. All rights reserved.
//

import UIKit
protocol PassData {
    
    func sendText(text : String)
}

class SecondVC: UIViewController {

    var delegate : PassData?
    
    
    @IBOutlet weak var label2: UILabel!
    
    
    @IBOutlet weak var TV: UITextView!
    
    
    

    @IBAction func backButton(_ sender: Any) {
        
        self.delegate?.sendText(text: TV.text ?? "")
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
    var Name : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        TV.text = Name
        // Do any additional setup after loading the view.
    }
   
}


