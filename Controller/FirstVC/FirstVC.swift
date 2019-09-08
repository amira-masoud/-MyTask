//
//  FirstVC.swift
//  MyTask
//
//  Created by Amira on 9/6/19.
//  Copyright © 2019 Amira. All rights reserved.
//

import UIKit

class FirstVC: UIViewController , PassData{
    func sendText(text: String) {
        TF2.text = text
    }
    
    
    

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var TF1: UITextField!
    
    
    @IBOutlet weak var TF2: UITextField!
    
    
    @IBOutlet weak var TF3: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func sendButton(_ sender: Any) {
        let vc = SecondVC()
        self.present(vc, animated: true, completion: nil)
        
        vc.Name = TF1.text ?? ""
        
        vc.delegate = self
 }
    

    
}

