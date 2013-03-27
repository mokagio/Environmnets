//
//  ViewController.m
//  EnviromnentsTest
//
//  Created by Giovanni Lodi on 3/26/13.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGFloat height = 30;
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height / 2 - height / 2, self.view.frame.size.width, height)];
    [self.view addSubview:label];
    
    label.textAlignment = NSTextAlignmentCenter;
    
#if DEV_PARAMETER
    label.text = @"DEVELOPMENT";
#else
    label.text = @"NOT DEVELOPMENT";
#endif
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
