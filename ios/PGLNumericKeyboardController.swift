//
//  PGLNumericKeyboardCOntroller.swift
//  NumericInput
//
//  Created by DAVID CORBIN on 5/15/23.
//

import Foundation
import UIKit


class PGLNumericKeyboardController : UIInputViewController {
    @IBOutlet weak var negateButton: UIButton!
    @IBAction func keyButtonPressed(_ sender: UIButton) {
        let title = sender.currentAttributedTitle?.string
        if (title != nil) {
            self.textDocumentProxy.insertText(title!)
        }
    }
    @IBAction func returnKeyPressed(_ sender: Any) {
        self.dismissKeyboard()
    }
    @IBAction func backspaceButtonPressed(_ sender: Any) {
        self.textDocumentProxy.deleteBackward()
    }

    init() {
        super.init(nibName: "NumericKeyboardView", bundle: nil)
    }

    required init(coder:NSCoder) {
        super.init(coder: coder)!
    }

}
