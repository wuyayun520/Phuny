#import "LimitCartesianButtonFilter.h"
    
@interface LimitCartesianButtonFilter ()

@end

@implementation LimitCartesianButtonFilter

- (void) clipHistogram: (NSString *)lazyRange
{
	dispatch_async(dispatch_get_main_queue(), ^{
		CALayer * liteTransformer = [[CALayer alloc] init];
		liteTransformer.name = lazyRange;
		liteTransformer.backgroundColor = [UIColor cyanColor].CGColor;
		//NSLog(@"sets= bussiness8 gen_str %@", bussiness8);
	});
}


@end
        