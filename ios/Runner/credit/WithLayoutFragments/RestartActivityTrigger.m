#import "RestartActivityTrigger.h"
    
@interface RestartActivityTrigger ()

@end

@implementation RestartActivityTrigger

- (void) needRequiredGrainJob: (int)popupduringcommand
{
	dispatch_async(dispatch_get_main_queue(), ^{
		BOOL checkboxFlags = popupduringcommand > 6;
		UISwitch *workflowMethod = [[UISwitch alloc] init];
		[workflowMethod setOn:checkboxFlags animated:NO];
		UIActivityIndicatorView *trianglescenter = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleMedium];
		[trianglescenter setFrame:CGRectMake(39, 36, 95, 75)];
		[trianglescenter setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleLarge];
		[trianglescenter startAnimating];
		//NSLog(@"business13 gen_int: %d%@", popupduringcommand);
	});
}


@end
        