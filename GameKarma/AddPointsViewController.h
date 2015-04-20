//
//  AddPointsViewController.h
//  GameKarma
//
//  Created by Mohit Jain on 4/18/15.
//  Copyright (c) 2015 mohitjain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ParseUI/ParseUI.h>


@interface AddPointsViewController : UIViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>


- (IBAction)addKarmaPoints:(id)sender;

@end
