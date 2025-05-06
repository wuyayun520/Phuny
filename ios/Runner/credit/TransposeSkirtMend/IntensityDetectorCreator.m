#import "IntensityDetectorCreator.h"
    
@interface IntensityDetectorCreator ()

@end

@implementation IntensityDetectorCreator

- (void) useExplicitLocalizationMemento: (NSMutableDictionary *)shouldattachdialogs
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger smallScene = shouldattachdialogs.count;
		int wrapSize[6];
		for (int i = 0; i < 6; i++) {
			wrapSize[i] = 8 * i;
		}
		if (smallScene > wrapSize[5]) {
			wrapSize[0] = smallScene;
		} else {
			int bitrateelement=0;
			for (int i = 0; i < 5; i++) {
				if (wrapSize[i] < smallScene && wrapSize[i+1] >= smallScene) {
				    bitrateelement = i + 1;
				    break;
				}
			}
			for (int i = 0; i < bitrateelement; i++) {
				wrapSize[bitrateelement - i] = wrapSize[bitrateelement - i - 1];
			}
			wrapSize[0] = smallScene;
		}
		//NSLog(@"Business17 gen_dic executed%@", Business17);
	});
}


@end
        