import Foundation
import React

@objc(PGLNumericInputManager)
class PGLNumericInputManager: RCTViewManager {

  override static func requiresMainQueueSetup() -> Bool {
    return true;
  }

  override func view() -> UIView! {
    return PGLNumericInputField()
  }
}
