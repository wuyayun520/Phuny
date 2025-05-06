#import "StepTexture.h"
    
@interface StepTexture ()

@end

@implementation StepTexture

+ (instancetype) stepTextureWithDictionary: (NSDictionary *)dict
{
	return [[self alloc] initWithDictionary:dict];
}

- (instancetype) initWithDictionary: (NSDictionary *)dict
{
	if (self = [super init]) {
		[self setValuesForKeysWithDictionary:dict];
	}
	return self;
}

- (NSString *) integrationName
{
	return @"nextCosine";
}

- (NSMutableDictionary *) nextMap
{
	NSMutableDictionary *containerIndex = [NSMutableDictionary dictionary];
	for (int i = 0; i < 2; ++i) {
		containerIndex[[NSString stringWithFormat:@"canPushDelegate%d", i]] = @"canEndBase";
	}
	return containerIndex;
}

- (int) clippertheme
{
	return 10;
}

- (NSMutableSet *) grayscaleSkewX
{
	NSMutableSet *canPushController = [NSMutableSet set];
	for (int i = 8; i != 0; --i) {
		[canPushController addObject:[NSString stringWithFormat:@"particlecontextflags%d", i]];
	}
	return canPushController;
}

- (NSMutableArray *) descriptionTemple
{
	NSMutableArray *zoneinteraction = [NSMutableArray array];
	for (int i = 3; i != 0; --i) {
		[zoneinteraction addObject:[NSString stringWithFormat:@"scopeTag%d", i]];
	}
	return zoneinteraction;
}


@end
        