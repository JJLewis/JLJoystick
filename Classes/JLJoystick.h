//
//  JLJoystick.h
//  JLJoystick
//
//  Created by Lewis, Jordan on 6/24/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface JLJoystick : UIView {
    UIView *backGround;
    UIView *stick;
    double theAngle;
    
    CGPoint mCenter;
    
    BOOL isUsingJoyStick;
    
    float STICK_CENTER_TARGET_POS_LEN;
}

- (id)initWithLocation:(CGPoint)location size:(int)size backgroundColor:(UIColor *)bgColor andStickColor:(UIColor *)sColor;

@property (nonatomic,assign) id delegate;

@property (assign) double theAngle;
@property (assign) BOOL isUsingJoyStick;

@end

// Delegate
@protocol JLJoystickDelegate
@optional

-(void)joystick:(JLJoystick *)_joystick angleChanged:(double)angle;

@end