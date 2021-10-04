//
//  DisplayViewController.swift
//  NewDisplayApp
//
//  Created by 박근보 on 2021/10/04.
//

import UIKit

class DisplayViewController: UIViewController {

    @IBOutlet var textView: UIView!
    @IBOutlet var UserTextField: UITextField!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var colorButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        textView.layer.cornerRadius = 10
        textView.layer.borderColor = UIColor.black.cgColor
        buttonUIsetting(buttonName: sendButton, buttonTitle: "보내기")
        buttonUIsetting(buttonName: colorButton, buttonTitle: "Aa")
        
    }
    
    func buttonUIsetting (buttonName btn: UIButton, buttonTitle title: String = "보내기") {
        
        btn.setTitle(title, for: .normal)
        btn.layer.borderWidth = 2
        btn.layer.cornerRadius = 5
        btn.layer.borderColor = UIColor.black.cgColor
        btn.backgroundColor = .white
        
    }
    
    func getRandomColor() -> UIColor {
        let red: CGFloat = CGFloat(drand48())
        let green: CGFloat = CGFloat(drand48())
        let blue: CGFloat = CGFloat(drand48())
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func sendButtonCliked(_ sender: UIButton) {
        resultLabel.text = UserTextField.text
        view.endEditing(true)
    }
    
    @IBAction func colorButtonCliked(_ sender: UIButton) {
        resultLabel.textColor = getRandomColor()
        
        
    }
    
    @IBAction func tapGestureCliked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    

}
