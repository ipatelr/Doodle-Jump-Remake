//
//  GAME.m
//  DoodleJump
//
//  Created by Rehan on 28/05/2014.
//  Copyright (c) 2014 eat. All rights reserved.
//

#import "GAME.h"

@interface GAME ()

@end

@implementation GAME


-(void)WebLink{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com"]];
}



-(void)GameOver{
    
    Ball.hidden = YES;
    Platform1.hidden = YES;
    Platform2.hidden = YES;
    Platform3.hidden = YES;
    Platform4.hidden = YES;
    Platform5.hidden = YES;
    Score.hidden = YES;
    GameOver.hidden = NO;
    Exit.hidden = NO;
    FinalScore.hidden = NO;
    scorekeeper.hidden = YES;
    FinalScoreBanner.hidden = NO;
    ExitBanner.hidden = NO;
    FinalScore.text = [NSString stringWithFormat:@"FINAL SCORE: %i", ScoreNumber];
    [Movement invalidate];
    
    if (ScoreNumber > HighScoreNumber) {
        HighScoreNumber = ScoreNumber;
        [[NSUserDefaults standardUserDefaults] setInteger:HighScoreNumber forKey:@"HighScoreSaved"];
        HighScore.hidden = NO;
    }
    
    
}






-(void)Scoring{
    
    ScoreNumber = ScoreNumber + AddedScore;
    AddedScore = AddedScore - 1;
    
    
    if (AddedScore < 0){
        AddedScore = 0;
    }
   
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    
    if (ScoreNumber > 25 && ScoreNumber < 200){
    LevelNumber = 2;
        Platform1.image = [UIImage imageNamed:@"PlatformS2.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll2.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR2.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL2.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR2.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL2.png"];
        }
    }
    
    if (ScoreNumber > 200 && ScoreNumber < 400){
        LevelNumber = 3;
        Platform1.image = [UIImage imageNamed:@"PlatformS3.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll3.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR3.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR3.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
    }
    
    if (ScoreNumber > 400 && ScoreNumber < 600){
        LevelNumber = 4;
        Platform1.image = [UIImage imageNamed:@"PlatformS4.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll4.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR4.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL4.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR4.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL4.png"];
        }
    }
    
    if (ScoreNumber > 600 && ScoreNumber < 800){
        LevelNumber = 5;
        Platform1.image = [UIImage imageNamed:@"PlatformS5.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll5.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR5.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL5.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR5.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL5.png"];
        }
    }
    if (ScoreNumber > 800 && ScoreNumber  < 1000){
        LevelNumber = 6;
        Platform1.image = [UIImage imageNamed:@"PlatformS6.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll6.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR6.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL6.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR6.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL6.png"];
        }
    }
    if (ScoreNumber > 1000 && ScoreNumber < 1200){
        LevelNumber = 7;
        Platform1.image = [UIImage imageNamed:@"PlatformS7.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll7.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR7.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL7.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR7.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL7.png"];
        }
    }
    if (ScoreNumber > 1200 && ScoreNumber < 1400){
        LevelNumber = 8;
        Platform1.image = [UIImage imageNamed:@"PlatformS1.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll1.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR1.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL1.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR1.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL1.png"];
        }
    }
    if (ScoreNumber > 1400 && ScoreNumber < 1600){
        LevelNumber = 9;
        Platform1.image = [UIImage imageNamed:@"PlatformS2.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll2.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR2.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL2.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR2.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL2.png"];
        }
    }
    if (ScoreNumber > 1600 && ScoreNumber < 1800){
        LevelNumber = 10;
        Platform1.image = [UIImage imageNamed:@"PlatformS3.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll3.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR3.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR3.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
    }
    if (ScoreNumber > 1800 && ScoreNumber < 2000){
        LevelNumber = 11;
        Platform1.image = [UIImage imageNamed:@"PlatformS4.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll4.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR4.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL4.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR4.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL4.png"];
        }
    }
    if (ScoreNumber > 2000 && ScoreNumber < 2200){
        LevelNumber = 12;
        Platform1.image = [UIImage imageNamed:@"PlatformS5.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll5.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR5.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL5.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR5.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL5.png"];
        }
    }
    if (ScoreNumber > 2200 && ScoreNumber < 2400){
        LevelNumber = 13;
        Platform1.image = [UIImage imageNamed:@"PlatformS6.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll6.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR6.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL6.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR6.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL6.png"];
        }
    }
    if (ScoreNumber > 2400 && ScoreNumber < 2600){
        LevelNumber = 14;
        Platform1.image = [UIImage imageNamed:@"PlatformS7.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll7.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR7.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL7.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR7.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL7.png"];
        }
    }
    if (ScoreNumber > 2600 && ScoreNumber < 2800){
        LevelNumber = 15;
        Platform1.image = [UIImage imageNamed:@"PlatformS1.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll1.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR1.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL1.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR1.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL1.png"];
        }
    }
    if (ScoreNumber > 2800 && ScoreNumber < 3000){
        Platform1.image = [UIImage imageNamed:@"PlatformS2.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll2.png"];
        LevelNumber = 16;
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR2.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL2.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR2.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL2.png"];
        }
    }
    if (ScoreNumber > 3000 && ScoreNumber < 3200){
        LevelNumber = 17;
        Platform1.image = [UIImage imageNamed:@"PlatformS3.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll3.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR3.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR3.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
    }
    if (ScoreNumber > 3200 && ScoreNumber < 3400){
        LevelNumber = 18;
        Platform1.image = [UIImage imageNamed:@"PlatformS4.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll4.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR4.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL4.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR4.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL4.png"];
        }
    }
    if (ScoreNumber > 3400 && ScoreNumber < 3600){
        LevelNumber = 19;
        Platform1.image = [UIImage imageNamed:@"PlatformS5.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll5.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR5.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL5.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR5.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL5.png"];
        }
    }
    if (ScoreNumber > 3600 && ScoreNumber < 3800){
        LevelNumber = 20;
        Platform1.image = [UIImage imageNamed:@"PlatformS6.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll6.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR6.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL6.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR6.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL6.png"];
        }
    }
    if (ScoreNumber > 3800 && ScoreNumber < 4000){
        LevelNumber = 21;
        Platform1.image = [UIImage imageNamed:@"PlatformS7.png"];
        Platform2.image = Platform1.image;
        Platform4.image = Platform1.image;
        Ball.image = [UIImage imageNamed:@"Balll7.png"];
        if (R3 == 1) {
            Platform3.image = [UIImage imageNamed:@"PlatformR7.png"];
        }
        else{
            Platform3.image = [UIImage imageNamed:@"PlatformL7.png"];
        }
        if (R5 == 1) {
            Platform5.image = [UIImage imageNamed:@"PlatformR7.png"];
        }
        else{
            Platform5.image = [UIImage imageNamed:@"PlatformL7.png"];
        }
    }
    if (ScoreNumber > 4000) {
        LevelNumber = 21;
    }
}
//check -----------------------------------------------------------------------------------------------------------
-(void)PlatformFall{
    
    if(Ball.center.y > 450) {
        PlatformMoveDown = 2;
    }
    else if (Ball.center.y > 400){
        
        PlatformMoveDown = 3;
    }
    else if (Ball.center.y > 300){
        PlatformMoveDown = 4;
    }
    else if (Ball.center.y > 250){
        PlatformMoveDown = 5;
    }
    else if (Ball.center.y > 200){
        PlatformMoveDown = 6;
    }
}



-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    BallLeft = NO;
    BallRight = NO;
    StopSideMovement = YES;
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    
    if (point.x < 160){
        BallLeft = YES;
    }
    else{
        BallRight = YES;
        
    }
}





-(void)PlatformMovement{
    
    Platform1.center = CGPointMake(Platform1.center.x, Platform1.center.y + PlatformMoveDown);
    Platform2.center = CGPointMake(Platform2.center.x, Platform2.center.y + PlatformMoveDown);
    Platform4.center = CGPointMake(Platform4.center.x, Platform4.center.y + PlatformMoveDown);
    
    Platform3.center = CGPointMake(Platform3.center.x + Platform3SideMovement, Platform3.center.y + PlatformMoveDown);
    
    
    Platform5.center = CGPointMake(Platform5.center.x + Platform5SideMovement, Platform5.center.y + PlatformMoveDown);
    
    
    
    if (Platform3.center.x < 37){
        
        R3 = 1;
        
        if(LevelNumber == 1){
            Platform3.image = [UIImage imageNamed:@"PlatformR1.png"];
        }
        else if(LevelNumber == 2){
            Platform3.image = [UIImage imageNamed:@"PlatformR2.png"];
        }
        else if(LevelNumber == 3){
            Platform3.image = [UIImage imageNamed:@"PlatformR3.png"];
        }
        else if(LevelNumber == 4){
            Platform3.image = [UIImage imageNamed:@"PlatformR4.png"];
        }
        else if(LevelNumber == 5){
            Platform3.image = [UIImage imageNamed:@"PlatformR5.png"];
        }
        else if(LevelNumber == 6){
            Platform3.image = [UIImage imageNamed:@"PlatformR6.png"];
        }
        else if(LevelNumber == 7){
            Platform3.image = [UIImage imageNamed:@"PlatformR7.png"];
        }
        else if(LevelNumber == 8){
            Platform3.image = [UIImage imageNamed:@"PlatformR1.png"];
        }
        else if(LevelNumber == 9){
            Platform3.image = [UIImage imageNamed:@"PlatformR2.png"];
        }
        else if(LevelNumber == 10){
            Platform3.image = [UIImage imageNamed:@"PlatformR3.png"];
        }
        else if(LevelNumber == 11){
            Platform3.image = [UIImage imageNamed:@"PlatformR4.png"];
        }
        else if(LevelNumber == 12){
            Platform3.image = [UIImage imageNamed:@"PlatformR5.png"];
        }
        else if(LevelNumber == 13){
            Platform3.image = [UIImage imageNamed:@"PlatformR6.png"];
        }
        else if(LevelNumber == 14){
            Platform3.image = [UIImage imageNamed:@"PlatformR7.png"];
        }
        else if(LevelNumber == 15){
            Platform3.image = [UIImage imageNamed:@"PlatformR1.png"];
        }
        else if(LevelNumber == 16){
            Platform3.image = [UIImage imageNamed:@"PlatformR2.png"];
        }
        else if(LevelNumber == 17){
            Platform3.image = [UIImage imageNamed:@"PlatformR3.png"];
        }
        else if(LevelNumber == 18){
            Platform3.image = [UIImage imageNamed:@"PlatformR4.png"];
        }
        else if(LevelNumber == 19){
            Platform3.image = [UIImage imageNamed:@"PlatformR5.png"];
        }
        else if(LevelNumber == 20){
            Platform3.image = [UIImage imageNamed:@"PlatformR6.png"];
        }
        else if(LevelNumber == 21){
            Platform3.image = [UIImage imageNamed:@"PlatformR7.png"];
        }
        
        switch (LevelNumber){
            case 1:
                Platform3SideMovement = 2;
                break;
            
            case 2:
                Platform3SideMovement = 3;
                break;
            case 3:
                Platform3SideMovement = 4;
                break;
            case 4:
                Platform3SideMovement = 5;
                break;
            case 5:
                Platform3SideMovement = 6;
                break;
            case 6:
                Platform3SideMovement = 7;
                break;
            case 7:
                Platform3SideMovement = 8;
                break;
            case 8:
                Platform3SideMovement = 9;
                break;
            case 9:
                Platform3SideMovement = 10;
                break;
            case 10:
                Platform3SideMovement = 11;
                break;
            case 11:
                Platform3SideMovement = 12;
                break;
            case 12:
                Platform3SideMovement = 13;
                break;
            case 13:
                Platform3SideMovement = 14;
                break;
            case 14:
                Platform3SideMovement = 15;
                break;
            case 15:
                Platform3SideMovement = 16;
                break;
            case 16:
                Platform3SideMovement = 17;
                break;
            case 17:
                Platform3SideMovement = 18;
                break;
            case 18:
                Platform3SideMovement = 19;
                break;
            case 19:
                Platform3SideMovement = 20;
                break;
            case 20:
                Platform3SideMovement = 21;
                break;
            case 21:
                Platform3SideMovement = 22;
                break;
        }
        
    }
    
    
    
    
    
    if (Platform3.center.x > 283){
        
        R3 = 0;
        
        if(LevelNumber == 1){
            Platform3.image = [UIImage imageNamed:@"PlatformL1.png"];
        }
        else if(LevelNumber == 2){
            Platform3.image = [UIImage imageNamed:@"PlatformL2.png"];
        }
        else if(LevelNumber == 3){
            Platform3.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
        else if(LevelNumber == 4){
            Platform3.image = [UIImage imageNamed:@"PlatformL4.png"];
        }
        else if(LevelNumber == 5){
            Platform3.image = [UIImage imageNamed:@"PlatformL5.png"];
        }
        else if(LevelNumber == 6){
            Platform3.image = [UIImage imageNamed:@"PlatformL6.png"];
        }
        else if(LevelNumber == 7){
            Platform3.image = [UIImage imageNamed:@"PlatformL7.png"];
        }
        else if(LevelNumber == 8){
            Platform3.image = [UIImage imageNamed:@"PlatformL1.png"];
        }
        else if(LevelNumber == 9){
            Platform3.image = [UIImage imageNamed:@"PlatformL2.png"];
        }
        else if(LevelNumber == 10){
            Platform3.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
        else if(LevelNumber == 11){
            Platform3.image = [UIImage imageNamed:@"PlatformL4.png"];
        }
        else if(LevelNumber == 12){
            Platform3.image = [UIImage imageNamed:@"PlatformL5.png"];
        }
        else if(LevelNumber == 13){
            Platform3.image = [UIImage imageNamed:@"PlatformL6.png"];
        }
        else if(LevelNumber == 14){
            Platform3.image = [UIImage imageNamed:@"PlatformL7.png"];
        }
        else if(LevelNumber == 15){
            Platform3.image = [UIImage imageNamed:@"PlatformL1.png"];
        }
        else if(LevelNumber == 16){
            Platform3.image = [UIImage imageNamed:@"PlatformL2.png"];
        }
        else if(LevelNumber == 17){
            Platform3.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
        else if(LevelNumber == 18){
            Platform3.image = [UIImage imageNamed:@"PlatformL4.png"];
        }
        else if(LevelNumber == 19){
            Platform3.image = [UIImage imageNamed:@"PlatformL5.png"];
        }
        else if(LevelNumber == 20){
            Platform3.image = [UIImage imageNamed:@"PlatformL6.png"];
        }
        else if(LevelNumber == 21){
            Platform3.image = [UIImage imageNamed:@"PlatformL7.png"];
        }
        
        switch (LevelNumber){
            case 1:
                Platform3SideMovement = -2;
                break;
                
            case 2:
                Platform3SideMovement = -3;
                break;
            case 3:
                Platform3SideMovement = -4;
                break;
            case 4:
                Platform3SideMovement = -5;
                break;
            case 5:
                Platform3SideMovement = -6;
                break;
            case 6:
                Platform3SideMovement = -7;
                break;
            case 7:
                Platform3SideMovement = -8;
                break;
            case 8:
                Platform3SideMovement = -9;
                break;
            case 9:
                Platform3SideMovement = -10;
                break;
            case 10:
                Platform3SideMovement = -11;
                break;
            case 11:
                Platform3SideMovement = -12;
                break;
            case 12:
                Platform3SideMovement = -13;
                break;
            case 13:
                Platform3SideMovement = -14;
                break;
            case 14:
                Platform3SideMovement = -15;
                break;
            case 15:
                Platform3SideMovement = -16;
                break;
            case 16:
                Platform3SideMovement = -17;
                break;
            case 17:
                Platform3SideMovement = -18;
                break;
            case 18:
                Platform3SideMovement = -19;
                break;
            case 19:
                Platform3SideMovement = -20;
                break;
            case 20:
                Platform3SideMovement = -21;
                break;
            case 21:
                Platform3SideMovement = -22;
                break;
        }
    }

    
    
        if (Platform5.center.x < 37){
        
        R5 = 1;
        
        if(LevelNumber == 1){
            Platform5.image = [UIImage imageNamed:@"PlatformR1.png"];
        }
        else if(LevelNumber == 2){
            Platform5.image = [UIImage imageNamed:@"PlatformR2.png"];
        }
        else if(LevelNumber == 3){
            Platform5.image = [UIImage imageNamed:@"PlatformR3.png"];
        }
        else if(LevelNumber == 4){
            Platform5.image = [UIImage imageNamed:@"PlatformR4.png"];
        }
        else if(LevelNumber == 5){
            Platform5.image = [UIImage imageNamed:@"PlatformR5.png"];
        }
        else if(LevelNumber == 6){
            Platform5.image = [UIImage imageNamed:@"PlatformR6.png"];
        }
        else if(LevelNumber == 7){
            Platform5.image = [UIImage imageNamed:@"PlatformR7.png"];
        }
        else if(LevelNumber == 8){
            Platform5.image = [UIImage imageNamed:@"PlatformR1.png"];
        }
        else if(LevelNumber == 9){
            Platform5.image = [UIImage imageNamed:@"PlatformR2.png"];
        }
        else if(LevelNumber == 10){
            Platform5.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
        else if(LevelNumber == 11){
            Platform5.image = [UIImage imageNamed:@"PlatformR4.png"];
        }
        else if(LevelNumber == 12){
            Platform5.image = [UIImage imageNamed:@"PlatformR5.png"];
        }
        else if(LevelNumber == 13){
            Platform5.image = [UIImage imageNamed:@"PlatformR6.png"];
        }
        else if(LevelNumber == 14){
            Platform5.image = [UIImage imageNamed:@"PlatformR7.png"];
        }
        else if(LevelNumber == 15){
            Platform5.image = [UIImage imageNamed:@"PlatformR1.png"];
        }
        else if(LevelNumber == 16){
            Platform5.image = [UIImage imageNamed:@"PlatformR2.png"];
        }
        else if(LevelNumber == 17){
            Platform5.image = [UIImage imageNamed:@"PlatformR3.png"];
        }
        else if(LevelNumber == 18){
            Platform5.image = [UIImage imageNamed:@"PlatformR4.png"];
        }
        else if(LevelNumber == 19){
            Platform5.image = [UIImage imageNamed:@"PlatformR5.png"];
        }
        else if(LevelNumber == 20){
            Platform5.image = [UIImage imageNamed:@"PlatformR6.png"];
        }
        else if(LevelNumber == 21){
            Platform5.image = [UIImage imageNamed:@"PlatformR7.png"];
        }

        switch (LevelNumber){
            case 1:
                Platform5SideMovement = 2;
                break;
                
            case 2:
                Platform5SideMovement = 3;
                break;
            case 3:
                Platform5SideMovement = 4;
                break;
            case 4:
                Platform5SideMovement = 5;
                break;
            case 5:
                Platform5SideMovement = 6;
                break;
            case 6:
                Platform5SideMovement = 7;
                break;
            case 7:
                Platform5SideMovement = 8;
                break;
            case 8:
                Platform5SideMovement = 9;
                break;
            case 9:
                Platform5SideMovement = 10;
                break;
            case 10:
                Platform5SideMovement = 11;
                break;
            case 11:
                Platform5SideMovement = 12;
                break;
            case 12:
                Platform5SideMovement = 13;
                break;
            case 13:
                Platform5SideMovement = 14;
                break;
            case 14:
                Platform5SideMovement = 15;
                break;
            case 15:
                Platform5SideMovement = 16;
                break;
            case 16:
                Platform5SideMovement = 17;
                break;
            case 17:
                Platform5SideMovement = 18;
                break;
            case 18:
                Platform5SideMovement = 19;
                break;
            case 19:
                Platform5SideMovement = 20;
                break;
            case 20:
                Platform5SideMovement = 21;
                break;
            case 21:
                Platform5SideMovement = 22;
                break;
        }
        
    }
    
    if (Platform5.center.x > 283){
        
        R5 = 0;
        
        if(LevelNumber == 1){
            Platform5.image = [UIImage imageNamed:@"PlatformL1.png"];
        }
        else if(LevelNumber == 2){
            Platform5.image = [UIImage imageNamed:@"PlatformL2.png"];
        }
        else if(LevelNumber == 3){
            Platform5.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
        else if(LevelNumber == 4){
            Platform5.image = [UIImage imageNamed:@"PlatformL4.png"];
        }
        else if(LevelNumber == 5){
            Platform5.image = [UIImage imageNamed:@"PlatformL5.png"];
        }
        else if(LevelNumber == 6){
            Platform5.image = [UIImage imageNamed:@"PlatformL6.png"];
        }
        else if(LevelNumber == 7){
            Platform5.image = [UIImage imageNamed:@"PlatformL7.png"];
        }
        else if(LevelNumber == 8){
            Platform5.image = [UIImage imageNamed:@"PlatformL1.png"];
        }
        else if(LevelNumber == 9){
            Platform5.image = [UIImage imageNamed:@"PlatformL2.png"];
        }
        else if(LevelNumber == 10){
            Platform5.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
        else if(LevelNumber == 11){
            Platform5.image = [UIImage imageNamed:@"PlatformL4.png"];
        }
        else if(LevelNumber == 12){
            Platform5.image = [UIImage imageNamed:@"PlatformL5.png"];
        }
        else if(LevelNumber == 13){
            Platform5.image = [UIImage imageNamed:@"PlatformL6.png"];
        }
        else if(LevelNumber == 14){
            Platform5.image = [UIImage imageNamed:@"PlatformL7.png"];
        }
        else if(LevelNumber == 15){
            Platform5.image = [UIImage imageNamed:@"PlatformL1.png"];
        }
        else if(LevelNumber == 16){
            Platform5.image = [UIImage imageNamed:@"PlatformL2.png"];
        }
        else if(LevelNumber == 17){
            Platform5.image = [UIImage imageNamed:@"PlatformL3.png"];
        }
        else if(LevelNumber == 18){
            Platform5.image = [UIImage imageNamed:@"PlatformL4.png"];
        }
        else if(LevelNumber == 19){
            Platform5.image = [UIImage imageNamed:@"PlatformL5.png"];
        }
        else if(LevelNumber == 20){
            Platform5.image = [UIImage imageNamed:@"PlatformL6.png"];
        }
        else if(LevelNumber == 21){
            Platform5.image = [UIImage imageNamed:@"PlatformL7.png"];
        }
        
        switch (LevelNumber){
            case 1:
                Platform5SideMovement = -2;
                break;
                
            case 2:
                Platform5SideMovement = -3;
                break;
            case 3:
                Platform5SideMovement = -4;
                break;
            case 4:
                Platform5SideMovement = -5;
                break;
            case 5:
                Platform5SideMovement = -6;
                break;
            case 6:
                Platform5SideMovement = -7;
                break;
            case 7:
                Platform5SideMovement = -8;
                break;
            case 8:
                Platform5SideMovement = -9;
                break;
            case 9:
                Platform5SideMovement = -10;
                break;
            case 10:
                Platform5SideMovement = -11;
                break;
            case 11:
                Platform5SideMovement = -12;
                break;
            case 12:
                Platform5SideMovement = -13;
                break;
            case 13:
                Platform5SideMovement = -14;
                break;
            case 14:
                Platform5SideMovement = -15;
                break;
            case 15:
                Platform5SideMovement = -16;
                break;
            case 16:
                Platform5SideMovement = -17;
                break;
            case 17:
                Platform5SideMovement = -18;
                break;
            case 18:
                Platform5SideMovement = -19;
                break;
            case 19:
                Platform5SideMovement = -20;
                break;
            case 20:
                Platform5SideMovement = -21;
                break;
            case 21:
                Platform5SideMovement = -22;
                break;
        }
        
    }
    
    PlatformMoveDown = PlatformMoveDown - 0.1;
    
    if (PlatformMoveDown < 0){
        PlatformMoveDown = 0;
    }
    
    if (Platform1.center.y > 477){
        RandomPosition = arc4random()%248;
        RandomPosition = RandomPosition + 23;
        Platform1.center = CGPointMake(RandomPosition, -4);
        Platform1Used = NO;
    }
    if (Platform2.center.y > 477){
        RandomPosition = arc4random()%248;
        RandomPosition = RandomPosition + 23;
        Platform2.center = CGPointMake(RandomPosition, -4);
        Platform2Used = NO;
    }
    if (Platform3.center.y > 477){
        RandomPosition = arc4random()%248;
        RandomPosition = RandomPosition + 23;
        Platform3.center = CGPointMake(RandomPosition, -4);
        Platform3Used = NO;
    }
    if (Platform4.center.y > 477){
        RandomPosition = arc4random()%248;
        RandomPosition = RandomPosition + 23;
        Platform4.center = CGPointMake(RandomPosition, -4);
        Platform4Used = NO;
    }
    if (Platform5.center.y > 477){
        RandomPosition = arc4random()%248;
        RandomPosition = RandomPosition + 23;
        Platform5.center = CGPointMake(RandomPosition, -4);
        Platform5Used = NO;
    }
    

}

-(void)Bounce{
    
    if (LevelNumber == 1) {
    Ball.animationImages = [NSArray arrayWithObjects:
                            [UIImage imageNamed:@"balll1bounce1.png"],
                            [UIImage imageNamed:@"balll1bounce2.png"],
                            [UIImage imageNamed:@"balll1bounce1.png"],
                            [UIImage imageNamed:@"balll1.png"], nil];
    }
    else if (LevelNumber == 2) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll2bounce1.png"],
                                [UIImage imageNamed:@"balll2bounce2.png"],
                                [UIImage imageNamed:@"balll2bounce1.png"],
                                [UIImage imageNamed:@"balll2.png"], nil];
    }
    else if (LevelNumber == 3) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll3bounce1.png"],
                                [UIImage imageNamed:@"balll3bounce2.png"],
                                [UIImage imageNamed:@"balll3bounce1.png"],
                                [UIImage imageNamed:@"balll3.png"], nil];
    }
    else if (LevelNumber == 4) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll4bounce1.png"],
                                [UIImage imageNamed:@"balll4bounce2.png"],
                                [UIImage imageNamed:@"balll4bounce1.png"],
                                [UIImage imageNamed:@"balll4.png"], nil];
    }
    else if (LevelNumber == 5) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll5bounce1.png"],
                                [UIImage imageNamed:@"balll5bounce2.png"],
                                [UIImage imageNamed:@"balll5bounce1.png"],
                                [UIImage imageNamed:@"balll5.png"], nil];
    }
    else if (LevelNumber == 6) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll6bounce1.png"],
                                [UIImage imageNamed:@"balll6bounce2.png"],
                                [UIImage imageNamed:@"balll6bounce1.png"],
                                [UIImage imageNamed:@"balll6.png"], nil];
    }
    else if (LevelNumber == 7) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll7bounce1.png"],
                                [UIImage imageNamed:@"balll7bounce2.png"],
                                [UIImage imageNamed:@"balll7bounce1.png"],
                                [UIImage imageNamed:@"balll7.png"], nil];
    }
    else if (LevelNumber == 8) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll1bounce1.png"],
                                [UIImage imageNamed:@"balll1bounce2.png"],
                                [UIImage imageNamed:@"balll1bounce1.png"],
                                [UIImage imageNamed:@"balll1.png"], nil];
    }
    else if (LevelNumber == 9) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll2bounce1.png"],
                                [UIImage imageNamed:@"balll2bounce2.png"],
                                [UIImage imageNamed:@"balll2bounce1.png"],
                                [UIImage imageNamed:@"balll2.png"], nil];
    }
    else if (LevelNumber == 10) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll3bounce1.png"],
                                [UIImage imageNamed:@"balll3bounce2.png"],
                                [UIImage imageNamed:@"balll3bounce1.png"],
                                [UIImage imageNamed:@"balll3.png"], nil];
    }
    else if (LevelNumber == 11) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll4bounce1.png"],
                                [UIImage imageNamed:@"balll4bounce2.png"],
                                [UIImage imageNamed:@"balll4bounce1.png"],
                                [UIImage imageNamed:@"balll4.png"], nil];
    }
    else if (LevelNumber == 12) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll5bounce1.png"],
                                [UIImage imageNamed:@"balll5bounce2.png"],
                                [UIImage imageNamed:@"balll5bounce1.png"],
                                [UIImage imageNamed:@"balll5.png"], nil];
    }
    else if (LevelNumber == 13) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll6bounce1.png"],
                                [UIImage imageNamed:@"balll6bounce2.png"],
                                [UIImage imageNamed:@"balll6bounce1.png"],
                                [UIImage imageNamed:@"balll6.png"], nil];
    }
    else if (LevelNumber == 14) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll7bounce1.png"],
                                [UIImage imageNamed:@"balll7bounce2.png"],
                                [UIImage imageNamed:@"balll7bounce1.png"],
                                [UIImage imageNamed:@"balll7.png"], nil];
    }
    else if (LevelNumber == 15) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll1bounce1.png"],
                                [UIImage imageNamed:@"balll1bounce2.png"],
                                [UIImage imageNamed:@"balll1bounce1.png"],
                                [UIImage imageNamed:@"balll1.png"], nil];
    }
    else if (LevelNumber == 16) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll2bounce1.png"],
                                [UIImage imageNamed:@"balll2bounce2.png"],
                                [UIImage imageNamed:@"balll2bounce1.png"],
                                [UIImage imageNamed:@"balll2.png"], nil];
    }
    else if (LevelNumber == 17) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll3bounce1.png"],
                                [UIImage imageNamed:@"balll3bounce2.png"],
                                [UIImage imageNamed:@"balll3bounce1.png"],
                                [UIImage imageNamed:@"balll3.png"], nil];
    }
    else if (LevelNumber == 18) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll4bounce1.png"],
                                [UIImage imageNamed:@"balll4bounce2.png"],
                                [UIImage imageNamed:@"balll4bounce1.png"],
                                [UIImage imageNamed:@"balll4.png"], nil];
    }
    else if (LevelNumber == 19) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll5bounce1.png"],
                                [UIImage imageNamed:@"balll5bounce2.png"],
                                [UIImage imageNamed:@"balll5bounce1.png"],
                                [UIImage imageNamed:@"balll5.png"], nil];
    }
    else if (LevelNumber == 20) {
        Ball.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"balll6bounce1.png"],
                                [UIImage imageNamed:@"balll6bounce2.png"],
                                [UIImage imageNamed:@"balll6bounce1.png"],
                                [UIImage imageNamed:@"balll6.png"], nil];
    }
                            
    [Ball setAnimationRepeatCount:1];
    Ball.animationDuration = 0.2;
    [Ball startAnimating];
    
    if (Ball.center.y > 400){
        UpMovement = 5;
    }
    else if (Ball.center.y > 300){
        UpMovement = 4;
    }
    else if (Ball.center.y > 200){
        UpMovement = 3;
    }
    
}


-(void)Moving{
    
    if (Ball.center.y > 467){
        
        [self GameOver];
        
    }
    
    [self Scoring];
    
    if (Ball.center.y < 250){
        Ball.center = CGPointMake(Ball.center.x, 250);
    }
    
    [self PlatformMovement];
    
    Ball.center = CGPointMake(Ball.center.x + SideMovement, Ball.center.y - UpMovement);
    
    if((CGRectIntersectsRect(Ball.frame, Platform1.frame)) & (UpMovement < -2)){
        [self Bounce];
        [self PlatformFall];
        if (Platform1Used == NO){
            AddedScore = 10;
            Platform1Used = YES;
        }
        
    }
    if((CGRectIntersectsRect(Ball.frame, Platform2.frame)) & (UpMovement < -2)){
        [self Bounce];
        [self PlatformFall];
        if (Platform2Used == NO){
            AddedScore = 10;
            Platform2Used = YES;
        }
    }
    if((CGRectIntersectsRect(Ball.frame, Platform3.frame)) & (UpMovement < -2)){
        [self Bounce];
        [self PlatformFall];
        if (Platform3Used == NO){
            AddedScore = 10;
            Platform3Used = YES;
        }
    }
    if((CGRectIntersectsRect(Ball.frame, Platform4.frame)) & (UpMovement < -2)){
        [self Bounce];
        [self PlatformFall];
        if (Platform4Used == NO){
            AddedScore = 10;
            Platform4Used = YES;
        }
    }
    if((CGRectIntersectsRect(Ball.frame, Platform5.frame)) & (UpMovement < -2)){
        [self Bounce];
        [self PlatformFall];
        if (Platform5Used == NO){
            AddedScore = 10;
            Platform5Used = YES;
        }
    }
    
    UpMovement = UpMovement - 0.1;
    
    

    if (BallLeft == YES){
        SideMovement = SideMovement - 0.3;
        if (SideMovement < -5) {
            SideMovement = -5;
        }
    }
    
    if (BallRight == YES){
        SideMovement = SideMovement + 0.3;
        if (SideMovement > 5) {
            SideMovement = 5;
        }

    }
    if(StopSideMovement == YES && SideMovement > 0) {
        SideMovement = SideMovement - 0.1;
        if(SideMovement < 0){
            SideMovement = 0;
            SideMovement = NO;
        }
    }

        if (StopSideMovement == YES && SideMovement < 0){
            SideMovement = SideMovement + 0.1;
            if (SideMovement > 0) {
                SideMovement = 0;
                StopSideMovement = NO;
        }
                
    }
    
    if (Ball.center.x < -11) {
        Ball.center = CGPointMake(330, Ball.center.y);
    }
    

        
        
    if (Ball.center.x > 330) {
    Ball.center = CGPointMake(-11, Ball.center.y);
        
    }


    }


    

-(IBAction)StartGame:(id)sender {
    
    start.hidden = YES;
    UpMovement = -1;
    
    Movement = [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(Moving) userInfo:nil repeats:YES];
    
    
    Platform2.hidden = NO;
    Platform3.hidden = NO;
    Platform4.hidden = NO;
    Platform5.hidden = NO;
    
    
    RandomPosition = arc4random()%248;
    RandomPosition = RandomPosition + 36;
    Platform2.center = CGPointMake(RandomPosition, 448);
    
    RandomPosition = arc4random()%248;
    RandomPosition = RandomPosition + 36;
    Platform3.center = CGPointMake(RandomPosition, 336);
    
    RandomPosition = arc4random()%248;
    RandomPosition = RandomPosition + 36;
    Platform4.center = CGPointMake(RandomPosition, 224);
    
    RandomPosition = arc4random()%248;
    RandomPosition = RandomPosition + 36;
    Platform5.center = CGPointMake(RandomPosition, 112);
    
    Platform3SideMovement = -2;
    Platform5SideMovement = 2;
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad




{
    Platform2.hidden = YES;
    Platform3.hidden = YES;
    Platform4.hidden = YES;
    Platform5.hidden = YES;
    FinalScoreBanner.hidden = YES;
    
    
    GameOver.hidden = YES;
    FinalScore.hidden = YES;
    HighScore.hidden = YES;
    Exit.hidden = YES;
    ExitBanner.hidden = YES;
    ScoreNumber = 0;
    AddedScore = 0;
    LevelNumber = 1;
    
    Platform1Used = NO;
    Platform2Used = NO;
    Platform3Used = NO;
    Platform4Used = NO;
    Platform5Used = NO;
    
    HighScoreNumber = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    
    UpMovement = 0;
    SideMovement = 0;
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end