#import "GBPrinterService.h"
#import <MixedObjcSwift/MixedObjcSwift-Swift.h>

@implementation GBPrinterService {
  GBPrinter *_printer;
}

- (instancetype)initWithPrinter:(nonnull GBPrinter *)printer {
  if (self = [super init]) {
    _printer = printer;
  }
  return self;
}

- (void)printString:(nonnull NSString *)message {
  [_printer print:message];
}

@end
