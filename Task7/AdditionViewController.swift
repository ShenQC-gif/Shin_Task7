//
//  AdditionViewController.swift
//  Task7
//
//  Created by ちいつんしん on 2021/05/31.
//

import UIKit

class AdditionViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
    }

    @IBAction func didTapCalculateButton(_ sender: Any) {

        let num1 = Int(textField1.text ?? "") ?? 0
        let num2 = Int(textField2.text ?? "") ?? 0

        resultLabel.text = "\(num1 + num2)"

        textField1.endEditing(true)
        textField2.endEditing(true)

    }

}
