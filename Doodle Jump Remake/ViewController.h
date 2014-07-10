//
//  ViewController.h
//  Space Invaders
//
//  Created by Rehan Patel on 28/05/2014.
//  Copyright (c) 2014 Stuart Allender. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameCenterManager.h"
@interface ViewController : UIViewController <UIActionSheetDelegate, GameCenterManagerDelegate>


@property (strong, nonatomic) IBOutlet UILabel *statusDetailLabel;
@property (weak, nonatomic) IBOutlet UILabel *actionLabel;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *actionBarLabel;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIImageView *playerPicture;
@property (weak, nonatomic) IBOutlet UILabel *playerName;
@property (weak, nonatomic) IBOutlet UILabel *playerStatus;

- (IBAction)link;

@end
