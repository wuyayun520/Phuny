#import "PartitionSkirtTrajectory.h"
    
@interface PartitionSkirtTrajectory ()

@end

@implementation PartitionSkirtTrajectory

- (void) listenCharacterPerEvent: (NSString *)primaryStatus
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UILabel *inactiveMission = [[UILabel alloc] initWithFrame:CGRectMake(433, 145, 816, 381)];
		inactiveMission.frame = CGRectMake(321, 44, 150, 67);
		inactiveMission.numberOfLines = 257;
		inactiveMission.layer.cornerRadius = 11.0f;
		inactiveMission.font = [UIFont systemFontOfSize:100];
		inactiveMission.shadowOffset = CGSizeMake(184, 224);
		inactiveMission.backgroundColor = [UIColor colorWithRed:27/255.0 green:31/255.0 blue:78/255.0 alpha:1.0];
		inactiveMission.layer.masksToBounds = YES;
		inactiveMission.numberOfLines = 36;
		inactiveMission.minimumScaleFactor = 1.0f;
		inactiveMission.preferredMaxLayoutWidth = 4.0f;
		//NSLog(@"sets= bussiness3 gen_str %@", bussiness3);
	});
}


@end
        