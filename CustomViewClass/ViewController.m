//
//  ViewController.m
//  CustomViewClass
//
//  Created by Stepan Kopylov on 11/05/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import "ViewController.h"
#import "SampleViewController.h"
#import "SampleViewControllerFrameLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)pushAutolayoutClicked:(id)sender
{
    SampleViewController *vc = [SampleViewController new];
    
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)pushFrameLayoutClicket:(id)sender
{
    SampleViewControllerFrameLayout *vc = [SampleViewControllerFrameLayout new];
    
    [self.navigationController pushViewController:vc animated:YES];
}


@end
