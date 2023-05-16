import Foundation
import UIKit

class PGLNumericInputField : UITextField {
    private weak var _inputViewController: UIInputViewController?
    override var inputViewController: UIInputViewController? {
        get {
            return _inputViewController
        }
        set {
            _inputViewController = newValue
        }
    }
    func prepareField(delegate: PGLNumericInputManager) {
        self.backgroundColor = UIColor(red: 0.75, green: 0.75, blue: 1, alpha:1);
        self.delegate = delegate
        self.smartDashesType = UITextSmartDashesType.no
    }
}
