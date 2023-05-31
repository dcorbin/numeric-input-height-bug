import Foundation
import React

@available(iOS 14.0, *)
@objc(PGLNumericInputManager)
class PGLNumericInputManager: RCTViewManager, UITextFieldDelegate {
  override static func requiresMainQueueSetup() -> Bool {
    true;
  }

  override func view() -> UIView! {
    let field = PGLNumericInputField()
    field.prepareField(delegate: self)
    return field
  }
}
