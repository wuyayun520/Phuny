#import "WithoutRadioScalability.h"
    
@interface WithoutRadioScalability ()

@end

@implementation WithoutRadioScalability

- (void) joinSelectedCoordinator: (NSMutableArray *)mapState
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSString *shouldStartIcon = [mapState objectAtIndex:0];
		UISegmentedControl *mobileAlignment = [[UISegmentedControl alloc] init];
		[mobileAlignment insertSegmentWithTitle:shouldStartIcon atIndex:0 animated:YES];
		mobileAlignment.selected = YES;
		mobileAlignment.enabled = NO;
		NSNumberFormatter *missedTask = [[NSNumberFormatter alloc] init];
		missedTask.maximumFractionDigits = 15;
		missedTask.minimumIntegerDigits = 5;
		[missedTask setRoundingMode:NSNumberFormatterRoundHalfUp];
		//NSLog(@"sets= bussiness6 gen_arr %@", bussiness6);
	});
}


@end
        