#import "ArithmeticInkWellCollection.h"
    
@interface ArithmeticInkWellCollection ()

@end

@implementation ArithmeticInkWellCollection

- (void) finishThroughSkirtNumber: (NSMutableArray *)imageColor
{
	dispatch_async(dispatch_get_main_queue(), ^{
		[imageColor addObject:@"layerRotation"];
		[imageColor insertObject:@"symmetricIntensity" atIndex:0];
		NSInteger sliderCommand = [imageColor count];
		UIImageView *clipperKind = [[UIImageView alloc] init];
		[clipperKind setFrame:CGRectMake(404, 404, 644, 518)];
		NSMutableArray *rectFlags = [NSMutableArray array];
		for (int i = 0; i < 8; i++) {
			UIImage *comprehensiveConnector = [UIImage imageNamed:[NSString stringWithFormat:@"frame%%d", i]];
			if (comprehensiveConnector) {
			    [rectFlags addObject:comprehensiveConnector];
			}
		}
		[clipperKind setAnimationImages:rectFlags];
		[clipperKind setAnimationDuration:0.1549366113184959];
		[clipperKind startAnimating];
		UITapGestureRecognizer *canEmitArithmetic = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
		[clipperKind addGestureRecognizer:canEmitArithmetic];
		[clipperKind setUserInteractionEnabled:YES];
		//NSLog(@"Business18 gen_arr with count: %d%@", sliderCommand);
	});
}


@end
        