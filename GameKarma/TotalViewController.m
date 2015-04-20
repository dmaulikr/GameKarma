//
//  TotalViewController.m
//  GameKarma
//
//  Created by Mohit Jain on 4/18/15.
//  Copyright (c) 2015 mohitjain. All rights reserved.
//

#import "TotalViewController.h"
#import <Parse/Parse.h>


@implementation TotalViewController


- (void)viewDidLoad {
    PFQuery *query = [PFQuery queryWithClassName:@"Karma"];
    [query whereKey:@"userName" equalTo:@"Mohit Jain"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %lu scores.", (unsigned long)objects.count);
            // Do something with the found objects
            for (PFObject *object in objects) {
                NSLog(@"%@", object.objectId);
               
                self.totalPoints = [[object objectForKey:@"KarmaPoints"] intValue] + self.totalPoints;
                self.totalPointsLabel.text = [NSString stringWithFormat:@"Total Karma points so far is %zd",self.totalPoints];
            }
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
}



@end
