#import "DraggableMarginSorter.h"
    
@interface DraggableMarginSorter ()

@end

@implementation DraggableMarginSorter

- (void) drawObserverSubscriber: (NSString *)promisePadding
{
	dispatch_async(dispatch_get_main_queue(), ^{
		CALayer * presentSign = [[CALayer alloc] init];
		presentSign.name = promisePadding;
		presentSign.borderColor = [UIColor purpleColor].CGColor;
		presentSign.position = CGPointZero;
		presentSign.backgroundColor = [UIColor redColor].CGColor;
		presentSign.bounds = CGRectMake(400, 391, 308, 355);
		presentSign.borderWidth = 308;
		//NSLog(@"sets= bussiness8 gen_str %@", bussiness8);
	});
}


@end
        