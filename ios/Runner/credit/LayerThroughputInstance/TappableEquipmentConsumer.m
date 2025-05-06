#import "TappableEquipmentConsumer.h"
    
@interface TappableEquipmentConsumer ()

@end

@implementation TappableEquipmentConsumer

- (void) maySelectedCanvas: (int)rectangleMargin
{
	dispatch_async(dispatch_get_main_queue(), ^{
		BOOL persistentformat = rectangleMargin > 20;
		UIProgressView *secondTask = [[UIProgressView alloc] init];
		secondTask.progress = (float)rectangleMargin/100.0;
		//NSLog(@"Business19 gen_int with value: %d%@", rectangleMargin);
	});
}


@end
        