#import "CurrentInteractorNotation.h"
    
@interface CurrentInteractorNotation ()

@end

@implementation CurrentInteractorNotation

- (void) parseAsynchronousGrid: (int)slashResponse
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UIActivityIndicatorView *hardthread = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleMedium];
		[hardthread stopAnimating];
		hardthread.hidesWhenStopped = NO;
		[hardthread setFrame:CGRectMake(34, 61, 89, 91)];
		CAShapeLayer *buildInkWell = [[CAShapeLayer alloc] init];
		[buildInkWell setShadowColor:[UIColor colorWithRed:39/255.0 green:125/255.0 blue:171/255.0 alpha:0.996078].CGColor];
		//NSLog(@"sets= bussiness4 gen_int %@", bussiness4);
	});
}


@end
        