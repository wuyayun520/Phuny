#import "EndScaleWidget.h"
    
@interface EndScaleWidget ()

@end

@implementation EndScaleWidget

- (void) mountAspectViaButton: (int)smallRange
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int inactiveTweak=94;
		if (inactiveTweak > smallRange) {
			inactiveTweak = smallRange;
		}
		UILabel *canListenView = [[UILabel alloc] init];
		canListenView.center = CGPointMake(129, 103);
		canListenView.clipsToBounds = YES;
		canListenView.layer.shadowOpacity = 0.0f;
		canListenView.layer.shadowOpacity = 0.0f;
		canListenView.translatesAutoresizingMaskIntoConstraints = YES;
		canListenView.minimumScaleFactor = 0.0f;
		canListenView.textAlignment = NSTextAlignmentCenter;
		canListenView.layer.shadowOpacity = 0.0f;
		canListenView.textColor = [UIColor blueColor];
		canListenView.adjustsFontSizeToFitWidth = YES;
		canListenView.lineBreakMode = 2;
		canListenView.textAlignment = NSTextAlignmentRight;
		canListenView.contentScaleFactor = 3.0f;
		UIDatePicker *cubitStatus = [[UIDatePicker alloc]init];
		[cubitStatus setDatePickerMode:UIDatePickerModeDate];
		UITextField *executeEntity = [[UITextField alloc] init];
		executeEntity.inputView = cubitStatus;
		//NSLog(@"sets= bussiness9 gen_int %@", bussiness9);
	});
}


@end
        