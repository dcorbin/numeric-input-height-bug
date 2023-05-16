//
//  PGLNumericKeyboardCOntroller.swift
//  NumericInput
//
//  Created by DAVID CORBIN on 5/15/23.
//

import Foundation
import UIKit

@objc
class PGLNumericKeyboardController : UIInputViewController {
    @IBOutlet weak var returnKey: UIButton!
    init() {
        super.init(nibName: "NumericKeyboardView", bundle: nil)
    }

    required init(coder:NSCoder) {
        super.init(coder: coder)!
    }

    @IBAction func returnPressed() {

    }
}
