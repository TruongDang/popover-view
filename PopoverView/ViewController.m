//
//  ViewController.m
//  PopoverView
//
//  Created by Đặng Văn Trường on 12/18/18.
//  Copyright © 2018 Đặng Văn Trường. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPopoverPresentationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)presentAsPopoverView:(UIButton *)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *popoverContentViewController = [storyboard instantiateViewControllerWithIdentifier:@"IDENTIFIER"];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:popoverContentViewController];
    [navigationController setModalPresentationStyle:UIModalPresentationPopover];
    UIPopoverPresentationController *popoverPresentationController = navigationController.popoverPresentationController;
    [popoverPresentationController setDelegate:self];
    [popoverContentViewController setPreferredContentSize:self.view.bounds.size];
    [popoverPresentationController setSourceView:self.view];
    [popoverPresentationController setSourceRect:sender.frame];
    
    [self presentViewController:navigationController animated:true completion:nil];
    
}
@end
