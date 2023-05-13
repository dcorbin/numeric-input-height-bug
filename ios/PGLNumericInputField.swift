import Foundation
import UIKit

class PGLNumericInputField : UITextField {
    func prepareField(delegate: PGLNumericInputManager) {
        self.backgroundColor = UIColor(red: 0.75, green: 0.75, blue: 1, alpha:1);
        self.delegate = delegate
        self.smartDashesType = UITextSmartDashesType.no
    }
}
