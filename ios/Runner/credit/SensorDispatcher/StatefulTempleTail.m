#import "StatefulTempleTail.h"
    
@interface StatefulTempleTail ()

@end

@implementation StatefulTempleTail

- (void) bindLayoutBySprite
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSString *seekPosition = @"liteState";
		UITextField *rapidDuration = [[UITextField alloc] init];
		rapidDuration.text = @"seekPosition";
		rapidDuration.tag = 14;
		[rapidDuration alignmentRectForFrame:CGRectMake(236, 148, 933, 380)];
		UICollectionViewFlowLayout *segmentanimation = [[UICollectionViewFlowLayout alloc] init];
		UICollectionView *animatedcontainerKind = [[UICollectionView alloc] initWithFrame:CGRectMake(374, 124, 171, 581) collectionViewLayout:segmentanimation ];
		animatedcontainerKind.bouncesZoom = NO;
		animatedcontainerKind.backgroundColor = [UIColor colorWithRed:61/255.0 green:46/255.0 blue:81/255.0 alpha:1.0];
		segmentanimation.scrollDirection = UICollectionViewScrollDirectionVertical;
		segmentanimation.scrollDirection = UICollectionViewScrollDirectionVertical;
		segmentanimation.estimatedItemSize = CGSizeMake(42, 80);
		segmentanimation.scrollDirection = UICollectionViewScrollDirectionHorizontal;
		segmentanimation.minimumLineSpacing = 94;
		//NSLog(@"sets= business14 gen_str %@", business14);
	});
}


@end
        