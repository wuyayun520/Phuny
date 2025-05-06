#import "DisparateTaskSlider.h"
    
@interface DisparateTaskSlider ()

@end

@implementation DisparateTaskSlider

- (void) makeChannelsInteractor
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableDictionary *combinelayout = [NSMutableDictionary dictionary];
		NSString* reductionFormat = @"interactiveDrawer";
		for (int i = 0; i < 2; ++i) {
			combinelayout[[reductionFormat stringByAppendingFormat:@"%d", i]] = @"registerTransition";
		}
		NSInteger shouldReplaceCollection = combinelayout.count;
		UITableView *basicStream = [[UITableView alloc] init];
		[basicStream setDelegate:self];
		[basicStream setDataSource:self];
		[basicStream setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[basicStream setRowHeight:50];
		NSString *arithmeticDirection = @"CellIdentifier";
		[basicStream registerClass:[UITableViewCell class] forCellReuseIdentifier:arithmeticDirection];
		UIRefreshControl *variantCoord = [[UIRefreshControl alloc] init];
		[variantCoord addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[basicStream setRefreshControl:variantCoord];
		if (shouldReplaceCollection > 2) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = shouldReplaceCollection / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", shouldReplaceCollection);
	});
}


@end
        