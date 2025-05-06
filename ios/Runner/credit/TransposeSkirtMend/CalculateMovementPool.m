#import "CalculateMovementPool.h"
    
@interface CalculateMovementPool ()

@end

@implementation CalculateMovementPool

- (void) startPublicGift: (int)cartesianSpot
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UIActivityIndicatorView *canPopAlert = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(16, 32, 86, 47)];
		UILabel *mountedrow = [[UILabel alloc] initWithFrame:CGRectMake(6, 141, 34, 311)];
		mountedrow.layer.borderWidth = 308;
		int createNorm = 87;
		if (createNorm > cartesianSpot) {
			createNorm = cartesianSpot;
		}
		CATransition *repositorysystemfeedback = [CATransition animation];
		repositorysystemfeedback.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
		repositorysystemfeedback.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
		repositorysystemfeedback.type = kCATransitionMoveIn;
		//NSLog(@"sets= business11 gen_int %@", business11);
	});
}


@end
        