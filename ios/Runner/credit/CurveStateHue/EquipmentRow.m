#import "EquipmentRow.h"
    
@interface EquipmentRow ()

@end

@implementation EquipmentRow

- (void) revisitListener: (NSString *)nextTrajectory
{
	dispatch_async(dispatch_get_main_queue(), ^{
		CALayer * hardPresenter = [[CALayer alloc] init];
		hardPresenter.name = nextTrajectory;
		hardPresenter.bounds = CGRectMake(374, 273, 68, 156);
		hardPresenter.backgroundColor = [UIColor clearColor].CGColor;
		hardPresenter.position = CGPointZero;
		hardPresenter.borderColor = [UIColor blackColor].CGColor;
		hardPresenter.borderWidth = 68;
		hardPresenter.masksToBounds = YES;
		CATransition *profileWidget = [CATransition animation];
		profileWidget.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
		//NSLog(@"sets= business16 gen_str %@", business16);
	});
}


@end
        