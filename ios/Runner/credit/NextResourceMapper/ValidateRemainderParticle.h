#import "DependencyAmortizationManager.h"
#import "VisitEnabledCurve.h"
#import "BlocStack.h"
#import "DetachMovementPopup.h"
#import "KeepPositionedInfrastructure.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ValidateRemainderParticle : NSObject


- (void) persistTentative;

- (void) resolveColumnAlongGrid;

@end

NS_ASSUME_NONNULL_END
        