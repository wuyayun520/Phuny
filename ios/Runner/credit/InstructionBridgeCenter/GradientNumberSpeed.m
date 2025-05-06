#import "GradientNumberSpeed.h"
    
@interface GradientNumberSpeed ()

@end

@implementation GradientNumberSpeed

- (void) aboveBrushAnimator
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableSet *canStartScale = [NSMutableSet set];
		for (int i = 2; i != 0; --i) {
			[canStartScale addObject:[NSString stringWithFormat:@"customMovement%d", i]];
		}
		UIActivityIndicatorView *dropdownbuttonDepth = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
		[dropdownbuttonDepth stopAnimating];
		[dropdownbuttonDepth setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleMedium];
		//NSLog(@"sets= bussiness1 gen_set %@", bussiness1);
	});
}


@end
        