//
//  ViewController.m
//  JoyStick
//
//  Created by Lewis, Jordan on 6/24/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(IBAction)speedControl:(id)sender {
    speed = [speedStepper value];
    speedLabel.text = [NSString stringWithFormat:@"%i", speed];
}

-(void)move {
    JLJoystick *js = [ball objectAtIndex:0];
    
    int vx = speed * cos(js.theAngle);
    int vy = speed * sin(js.theAngle);
    
    if (!js.isUsingJoyStick) {
        vx = 0;
    }
    
    imageToMove.center = CGPointMake(imageToMove.center.x + vx, imageToMove.center.y + vy);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    JLJoystick *js = [[JLJoystick alloc] initWithLocation:CGPointMake(20, 100) size:160 backgroundColor:[UIColor redColor] andStickColor:[UIColor greenColor]];
    [self.view addSubview:js];
    ball = [[NSMutableArray alloc] initWithCapacity:1];
    [ball addObject:js];
    speed = 2;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(move) userInfo:nil repeats:YES];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft)||(interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
