//
//  ViewController.swift
//  PassingBackDelegationSwift
//
//  Created by Hugo Flores Perez on 4/4/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class ReceiverVC: UIViewController, UpdateLabelTextDelegate {
    
    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSender" {
            let dest = segue.destination as! SenderVC
            dest.delegate = self
        }
    }
    
    func updateLabelText(withText text: String) {
        myLabel.text = text
    }

}

