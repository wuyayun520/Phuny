#import "SlashZone.h"
    
@interface SlashZone ()

@end

@implementation SlashZone

- (instancetype) init
{
	NSNotificationCenter *tabviewMediator = [NSNotificationCenter defaultCenter];
	[tabviewMediator addObserver:self selector:@selector(discardedTouch:) name:UIWindowDidBecomeHiddenNotification object:nil];
	return self;
}

- (void) encapsulateComposableCurve: (NSMutableDictionary *)directLatency
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger particleVisibility = directLatency.count;
		//NSLog(@"sets= bussiness5 gen_dic %@", bussiness5);
	});
}

- (void) discardedTouch: (NSNotification *)conformScene
{
	//NSLog(@"userInfo=%@", [conformScene userInfo]);
}

- (void) dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
        