import Foundation

@objc(GBPrinter)
public class Printer: NSObject {

  private let prefix: String

  @objc public init(prefix: NSString) {
    self.prefix = prefix as String
  }

  @objc public func print(_ message: NSString) {
    Swift.print("\(prefix)\(message)")
  }
}
