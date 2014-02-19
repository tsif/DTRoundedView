/*
 * DTRoundedView.m
 */


#import "DTRoundedView.h"

@interface DTRoundedView() {

    CGRect _rect;
}

@end

@implementation DTRoundedView

@synthesize corners    = _corners;
@synthesize radius     = _radius;
@synthesize fillColour = _fillColour;

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        _rect                = frame;
        _corners             = DTCornerNone;
        _radius              = 3.0f;
        _fillColour          = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    UIBezierPath *roundedRectanglePath;
    UIRectCorner corner = 0;
    
    [super drawRect:rect];
    
    if(_corners & DTCornerNone) {
        roundedRectanglePath = [UIBezierPath bezierPathWithRect:CGRectMake(0.0f, 0.0f, _rect.size.width, _rect.size.height)];
        
    } else {
        
        if(_corners & DTCornerTopRight) {
            corner |= UIRectCornerTopRight;
        }
        
        if(_corners & DTCornerBottomRight) {
            corner |= UIRectCornerBottomRight;
        }
        
        if(_corners & DTCornerBottomLeft) {
            corner |= UIRectCornerBottomLeft;
        }
        
        if(_corners & DTCornerTopLeft) {
            corner |= UIRectCornerTopLeft;
        }
        
        roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0.0f, 0.0f, _rect.size.width, _rect.size.height)
                                                     byRoundingCorners:corner
                                                           cornerRadii:CGSizeMake(_radius, _radius)];
        
    }
    
    [_fillColour setFill];
    [roundedRectanglePath fill];
    
    return;
}

@end
