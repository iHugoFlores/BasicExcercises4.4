//
//  SenderVC.swift
//  PassingBackDelegationSwift
//
//  Created by Hugo Flores Perez on 4/4/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

protocol UpdateLabelTextDelegate {
    func updateLabelText(withText text: String)
}

class SenderVC: UIViewController {
    
    var delegate: UpdateLabelTextDelegate?

    @IBOutlet weak var textInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onPress(_ sender: Any) {
        delegate?.updateLabelText(withText: textInput.text!)
        dismiss(animated: true, completion: nil)
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
