//
//  TotalViewController.h
//  GameKarma
//
//  Created by Mohit Jain on 4/18/15.
//  Copyright (c) 2015 mohitjain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TotalViewController : UIViewController

@property (nonatomic, assign) int totalPoints;
@property (nonatomic, strong) IBOutlet UILabel *totalPointsLabel;

@end
