#import "SearcherContainer.h"
    
@interface SearcherContainer ()

@end

@implementation SearcherContainer

- (void) postOnConstraintChanged: (int)textfieldDistance
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int parallelDimension[textfieldDistance];
		for (int i = 0; i < textfieldDistance; i++) {
			parallelDimension[i] = i * 1;
		}
		int fragmentrequest = (int)(sizeof(parallelDimension) / sizeof(int));
		for (int i = 0; i < fragmentrequest/2; i++) {
			parallelDimension[fragmentrequest - i - 1] = 1;
		}
		//NSLog(@"Business17 gen_int executed%@", Business17);
	});
}


@end
        