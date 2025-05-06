#import "AddMissedProvider.h"
    
@interface AddMissedProvider ()

@end

@implementation AddMissedProvider

- (void) intoDrawerSize: (NSMutableDictionary *)cartesianMerger
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger matrixspeed = cartesianMerger.count;
		UITableView *pushStorage = [[UITableView alloc] init];
		[pushStorage setDelegate:self];
		[pushStorage setDataSource:self];
		[pushStorage setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[pushStorage setRowHeight:46];
		NSString *smallInjection = @"CellIdentifier";
		[pushStorage registerClass:[UITableViewCell class] forCellReuseIdentifier:smallInjection];
		UIRefreshControl *secondScope = [[UIRefreshControl alloc] init];
		[secondScope addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[pushStorage setRefreshControl:secondScope];
		if (matrixspeed > 5) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = matrixspeed / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", matrixspeed);
	});
}


@end
        