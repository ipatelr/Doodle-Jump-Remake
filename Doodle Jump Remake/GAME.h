//
//  GAME.h
//  DoodleJump
//
//  Created by Rehan on 28/05/2014.
//  Copyright (c) 2014 eat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameCenterManager.h"

float UpMovement;
float SideMovement;
int RandomPosition;
int Platform3SideMovement;
int Platform5SideMovement;

float PlatformMoveDown;

BOOL BallLeft;
BOOL BallRight;
BOOL StopSideMovement;
int ScoreNumber;
int HighScoreNumber;
int AddedScore;
int LevelNumber;

BOOL Platform1Used;
BOOL Platform2Used;
BOOL Platform3Used;
BOOL Platform4Used;
BOOL Platform5Used;

BOOL R3;
BOOL R5;

@interface GAME : UIViewController
{
    IBOutlet UIButton *start;
    IBOutlet UIImageView *Ball;
    IBOutlet UIImageView *Platform1;
    IBOutlet UIImageView *Platform2;
    IBOutlet UIImageView *Platform3;
    IBOutlet UIImageView *Platform4;
    IBOutlet UIImageView *Platform5;
    IBOutlet UIImageView *scorekeeper;
    IBOutlet UIImageView *FinalScoreBanner;
    IBOutlet UIImageView *ExitBanner;
    
    
    IBOutlet UILabel *Score;
    IBOutlet UILabel *GameOver;
    IBOutlet UILabel *FinalScore;
    IBOutlet UILabel *HighScore;
    IBOutlet UIButton *Exit;
    IBOutlet UIApplication *Weblink;

    NSTimer *Movement;
    
    
}

-(IBAction)StartGame:(id)sender;
-(void)Moving;
-(void)Bounce;
-(void)PlatformMovement;
-(void)PlatformFall;
-(void)Scoring;
-(void)GameOver;

@end
