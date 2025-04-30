#import "DivideIgnoredFormatContainer.h"
    
@interface DivideIgnoredFormatContainer ()

@end

@implementation DivideIgnoredFormatContainer

- (void) cancelGranularCoordHelper
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableArray *setDirectDataList = [NSMutableArray array];
		for (int i = 0; i < 10; ++i) {
			[setDirectDataList addObject:[NSString stringWithFormat:@"calculateOriginalBaseType%d", i]];
		}
		NSString *pushArithmeticParameterArray = [setDirectDataList objectAtIndex:0];
		UISegmentedControl *setOldParamHandler = [[UISegmentedControl alloc] init];
		[setOldParamHandler insertSegmentWithTitle:pushArithmeticParameterArray atIndex:0 animated:YES];
		setOldParamHandler.selected = YES;
		setOldParamHandler.enabled = YES;
		//NSLog(@"sets= bussiness6 gen_arr %@", bussiness6);
	});
}


@end
        