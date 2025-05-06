#import "NavigateScreenConverter.h"
    
@interface NavigateScreenConverter ()

@end

@implementation NavigateScreenConverter

- (void) upPlateEffect: (NSMutableArray *)tabbarDistance
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSString *storageDirection = [tabbarDistance objectAtIndex:0];
		UISegmentedControl *overlayInterpreter = [[UISegmentedControl alloc] init];
		[overlayInterpreter insertSegmentWithTitle:storageDirection atIndex:0 animated:YES];
		UISlider *cartesianLatency = [[UISlider alloc] init];
		cartesianLatency.value = 0.5;
		cartesianLatency.minimumValue = 0;
		cartesianLatency.maximumValue = 1;
		cartesianLatency.enabled = YES;
		BOOL wrapperDirection = cartesianLatency.isEnabled;
		//NSLog(@"sets= business15 gen_arr %@", business15);
	});
}


@end
        