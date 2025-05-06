#import "AfterNormController.h"
    
@interface AfterNormController ()

@end

@implementation AfterNormController

- (void) animateEqualizationRect: (NSMutableDictionary *)methodScale
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger prioroptiontransparency = methodScale.count;
		int holdswitch = 64;
		if (prioroptiontransparency == 5) {
			holdswitch = 2;
		} else {
			holdswitch = prioroptiontransparency * 3;
		}
		NSNumberFormatter *canMountFlex = [[NSNumberFormatter alloc] init];
		[canMountFlex setNumberStyle:NSNumberFormatterSpellOutStyle];
		canMountFlex.maximumIntegerDigits = 14;
		[canMountFlex setNumberStyle:NSNumberFormatterScientificStyle];
		canMountFlex.minimumIntegerDigits = 2;
		//NSLog(@"sets= bussiness9 gen_dic %@", bussiness9);
	});
}


@end
        