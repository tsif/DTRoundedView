/*
 * DTRoundedView.h
 */


#import <UIKit/UIKit.h>

typedef enum _DTRoundedCorner {
    DTCornerNone         = 0,
    DTCornerTopRight     = 1 <<  0,
    DTCornerBottomRight  = 1 <<  1,
    DTCornerBottomLeft   = 1 <<  2,
    DTCornerTopLeft      = 1 <<  3,
} DTRoundedCorner;

@interface DTRoundedView : UIView {
    
}

@property(nonatomic)         DTRoundedCorner corners;
@property(nonatomic)         CGFloat         radius;
@property(nonatomic, strong) UIColor         *fillColour;

@end
