#import <Foundation/Foundation.h>
@class GBPrinter;

NS_ASSUME_NONNULL_BEGIN

@interface GBPrinterService: NSObject

- (nonnull instancetype)initWithPrinter:(nonnull GBPrinter *)printer;

- (void)printString:(nonnull NSString *)message;

@end

NS_ASSUME_NONNULL_END
