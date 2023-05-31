import Foundation
import UIKit

class PGLNumericInputField : UITextField {
    func prepareField(delegate: PGLNumericInputManager) {
        self.delegate = delegate
    }
}
