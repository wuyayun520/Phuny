#import "CancelObserverContainer.h"
    
@interface CancelObserverContainer ()

@end

@implementation CancelObserverContainer

- (void) aboveWorkflowSink: (NSMutableDictionary *)draggableInteractor
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger canPrepareCatalyst = draggableInteractor.count;
		UITableView *accordionGrain = [[UITableView alloc] init];
		[accordionGrain setDelegate:self];
		[accordionGrain setDataSource:self];
		[accordionGrain setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[accordionGrain setRowHeight:48];
		NSString *adjustSprite = @"CellIdentifier";
		[accordionGrain registerClass:[UITableViewCell class] forCellReuseIdentifier:adjustSprite];
		UIRefreshControl *canRouteMultiplication = [[UIRefreshControl alloc] init];
		[canRouteMultiplication addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[accordionGrain setRefreshControl:canRouteMultiplication];
		if (canPrepareCatalyst > 10) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = canPrepareCatalyst / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", canPrepareCatalyst);
	});
}


@end
        