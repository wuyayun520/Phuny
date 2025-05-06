#import "EventGroup.h"
    
@interface EventGroup ()

@end

@implementation EventGroup

- (void) needEuclideanAxisTier: (NSMutableDictionary *)descriptionformat
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger directlyHandler = descriptionformat.count;
		UITableView *confidentialityInteraction = [[UITableView alloc] init];
		[confidentialityInteraction setDelegate:self];
		[confidentialityInteraction setDataSource:self];
		[confidentialityInteraction setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[confidentialityInteraction setRowHeight:50];
		NSString *canFormatCapacities = @"CellIdentifier";
		[confidentialityInteraction registerClass:[UITableViewCell class] forCellReuseIdentifier:canFormatCapacities];
		UIRefreshControl *retainedView = [[UIRefreshControl alloc] init];
		[retainedView addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[confidentialityInteraction setRefreshControl:retainedView];
		if (directlyHandler > 7) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = directlyHandler / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", directlyHandler);
	});
}


@end
        