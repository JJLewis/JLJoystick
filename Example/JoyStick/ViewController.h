//
//  ViewController.h
//  JoyStick
//
//  Created by Lewis, Jordan on 6/24/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JLJoystick.h"

@interface ViewController : UIViewController {
    IBOutlet UIImageView *imageToMove;
    NSTimer *timer;
    NSMutableArray *ball;
    IBOutlet UIStepper *speedStepper;
    IBOutlet UILabel *speedLabel;
    int speed;
}

-(IBAction)speedControl:(id)sender;

@end
