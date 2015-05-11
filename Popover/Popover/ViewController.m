//
//  ViewController.m
//  Popover
//
//  Created by Evandro Remon Pulz Viva on 05/05/15.
//  Copyright (c) 2015 Evandro Remon Pulz Viva. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showPopover"]) {
        PopoverViewController *dest = segue.destinationViewController;
        UIPopoverPresentationController *popPC = dest.popoverPresentationController;
        popPC.delegate = self;
        dest.delegate = self;
    }
    
}

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
    return UIModalPresentationNone;
}

-(void)dismissPopover
{
    NSLog(@"delegate dismiss");
}

-(void)popoverPresentationControllerDidDismissPopover:(UIPopoverPresentationController *)popoverPresentationController
{
    NSLog(@"DidDismiss");
}

-(BOOL)popoverPresentationControllerShouldDismissPopover:(UIPopoverPresentationController *)popoverPresentationController
{
    NSLog(@"ShouldDismiss");
    return false;
}


@end
