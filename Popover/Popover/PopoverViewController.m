//
//  PopoverViewController.m
//  Popover
//
//  Created by Evandro Remon Pulz Viva on 05/05/15.
//  Copyright (c) 2015 Evandro Remon Pulz Viva. All rights reserved.
//

#import "PopoverViewController.h"

@implementation PopoverViewController

- (IBAction)dismissButtonClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate dismissPopover];
}
@end
