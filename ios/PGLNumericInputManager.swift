import Foundation
import React

@available(iOS 14.0, *)
@objc(PGLNumericInputManager)
class PGLNumericInputManager: RCTViewManager, UITextFieldDelegate {
  struct Constants {
    static let MINUS: Character = "-"
    static let MINUS_STRING = String(MINUS)
  }

  var keyboardController: PGLNumericKeyboardController?;

  private static let logger = Logger(
          subsystem: Bundle.main.bundleIdentifier!,
          category: String(describing: PGLNumericInputManager.self)
  )

  override static func requiresMainQueueSetup() -> Bool {
    true;
  }

  override func view() -> UIView! {
    let field = PGLNumericInputField()
    field.prepareField(delegate: self)
    field .addTarget(self,
            action: #selector(PGLNumericInputManager.textFieldDidChange(_:)),
            for: UIControl.Event.editingChanged)
    field.keyboardType = UIKeyboardType.numbersAndPunctuation

    if (keyboardController == nil) {
      keyboardController = PGLNumericKeyboardController()
    }

    if (keyboardController != nil) {
      field.inputViewController = keyboardController!
      field.inputView = keyboardController?.view
    }

    return field
  }

  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    let allowedCharacters = CharacterSet.decimalDigits.union(CharacterSet(charactersIn: Constants.MINUS_STRING))
    let characterSet = CharacterSet(charactersIn: string)
    return allowedCharacters.isSuperset(of: characterSet);
  }

  @objc
  func textFieldDidChange(_ textField: UITextField){
    guard let originalValue = textField.text else { return }
    var value = originalValue
    let isNegative = value.starts(with: Constants.MINUS_STRING)
    value = value.replacingOccurrences(of: Constants.MINUS_STRING, with: "")
    if isNegative {
      value = Constants.MINUS_STRING + value
    }
    if originalValue != value {
      textField.text = value
    }

  }
}
