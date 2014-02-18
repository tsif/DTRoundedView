//
//  DTViewController.m
//

#import "DTRoundedView.h"
#import "DTViewController.h"

@interface DTViewController ()

@end

@implementation DTViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    DTRoundedView *roundedview  = [[DTRoundedView alloc] initWithFrame:(CGRect){{100.0f, 100.0f}, {100.0f, 100.0f}}];
    roundedview.backgroundColor = [UIColor clearColor];
    roundedview.fillColour      = [UIColor redColor];
    roundedview.corners         = DTCornerTopRight|DTCornerBottomLeft;
    roundedview.radius          = 10.0f;
    
    [self.view addSubview:roundedview];
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
