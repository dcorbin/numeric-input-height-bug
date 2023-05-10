import Foundation
import UIKit

class PGLNumericInputField : UITextField {
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 30, height: 30));
        self.backgroundColor = UIColor(red: 0.75, green: 0.75, blue: 1, alpha:1);
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
