#import "PartitionUniqueSink.h"
    
@interface PartitionUniqueSink ()

@end

@implementation PartitionUniqueSink

- (void) keepMutableAlertSingleton: (NSMutableSet *)lastOverlay
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger staticAwait =  [lastOverlay count];
		UISegmentedControl *wrappertension = [[UISegmentedControl alloc] init];
		__block NSInteger canSaveProtocol = 0;
		[lastOverlay enumerateObjectsUsingBlock:^(id  _Nonnull emitPriority, BOOL * _Nonnull stop) {
		    if (canSaveProtocol < 5) {
		        [wrappertension insertSegmentWithTitle:[emitPriority description] atIndex:canSaveProtocol animated:NO];
		        canSaveProtocol++;
		    } else {
		        *stop = YES;
		    }
		}];
		[wrappertension setSelectedSegmentIndex:0];
		[wrappertension setTintColor:[UIColor grayColor]];
		UIAlertController *associatedRequest = [UIAlertController alertControllerWithTitle:@"Set Operations" message:[NSString stringWithFormat:@"Set contains %lu items", (unsigned long)staticAwait] preferredStyle:UIAlertControllerStyleAlert];
		UIAlertAction *themeorigin = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
		[associatedRequest addAction:themeorigin];
		if (staticAwait > 5) {
			// 当集合元素较多时，添加额外的操作按钮
			UIAlertAction *extraAction = [UIAlertAction actionWithTitle:@"Process Set" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
			    // 处理集合的代码
			    NSLog(@"Processing set with %lu items", (unsigned long)staticAwait);
			}];
			[associatedRequest addAction:extraAction];
		}
		//NSLog(@"Business18 gen_set with size: %lu%@", (unsigned long)staticAwait);
	});
}


@end
        