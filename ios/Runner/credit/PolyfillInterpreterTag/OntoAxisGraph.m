#import "OntoAxisGraph.h"
    
@interface OntoAxisGraph ()

@end

@implementation OntoAxisGraph

- (void) limitFusedService
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableDictionary *mainOverlay = [NSMutableDictionary dictionary];
		for (int i = 2; i != 0; --i) {
			mainOverlay[[NSString stringWithFormat:@"cycleDirection%d", i]] = @"enabledAnchor";
		}
		NSInteger attachTitle = mainOverlay.count;
		UITableView *canDispatchGram = [[UITableView alloc] init];
		[canDispatchGram setDelegate:self];
		[canDispatchGram setDataSource:self];
		[canDispatchGram setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[canDispatchGram setRowHeight:42];
		NSString *activeNib = @"CellIdentifier";
		[canDispatchGram registerClass:[UITableViewCell class] forCellReuseIdentifier:activeNib];
		UIRefreshControl *grayscaleShape = [[UIRefreshControl alloc] init];
		[grayscaleShape addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[canDispatchGram setRefreshControl:grayscaleShape];
		if (attachTitle > 8) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = attachTitle / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", attachTitle);
	});
}


@end
        