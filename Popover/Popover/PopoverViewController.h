//
//  PopoverViewController.h
//  Popover
//
//  Created by Evandro Remon Pulz Viva on 05/05/15.
//  Copyright (c) 2015 Evandro Remon Pulz Viva. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PopoverDismissDelegate
- (void) dismissPopover;
@end

@interface PopoverViewController : UIViewController

@property (nonatomic, assign) id<PopoverDismissDelegate> delegate;

- (IBAction)dismissButtonClick:(id)sender;

@end
