//
//  RCCAppDelegate.m
//  ResistorCodeColor
//
//  Created by Nicolas Senaud on 2013/11/30.
//  Copyright (c) 2013 Nicolas Senaud. All rights reserved.
//

#import "RCCAppDelegate.h"

#define BLACK  0
#define BROWN  1
#define RED    2
#define ORANGE 3
#define YELLOW 4
#define GREEN  5
#define BLUE   6
#define VIOLET 7
#define GREY   8
#define WHITE  9

#define BLACK_MULTIPLIER  1e0
#define BROWN_MULTIPLIER  1e1
#define RED_MULTIPLIER    1e2
#define ORANGE_MULTIPLIER 1e3
#define YELLOW_MULTIPLIER 1e4
#define GREEN_MULTIPLIER  1e5
#define BLUE_MULTIPLIER   1e6
#define VIOLET_MULTIPLIER 1e7
#define GREY_MULTIPLIER   1e8
#define WHITE_MULTIPLIER  1e9

@implementation RCCAppDelegate

- (id) init
{
	self = [super init];
	if (self)
	{
		NSLog(@"init");
		
		currentState = 1;
		[_resistorDisplay setStringValue:@"Type Color Code"];
	}
	
	return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

- (void)newEntry:(int)color withMultiplier:(int)multiplier
{
	switch (currentState) {
		case 1:
			[_resistorDisplay setIntegerValue:color];
			currentState++;
			[_state setIntegerValue:currentState];
			break;
			
		case 2:
			[_resistorDisplay setIntegerValue:(10*[_resistorDisplay integerValue]+color)];
			currentState++;
			[_state setIntegerValue:currentState];
			break;
			
		case 3:
			[_resistorDisplay setIntegerValue:([_resistorDisplay integerValue]*multiplier)];
			currentState = 1;
			[_state setIntegerValue:currentState];
			break;
			
		default:
			NSLog(@"Error: State Unknown");
			[_resistorDisplay setStringValue:@"Error!"];
			currentState = 4;
			[_state setIntegerValue:currentState];
			break;
	}
}

- (IBAction)black:(id)sender {
	[self newEntry:BLACK withMultiplier:BLACK_MULTIPLIER];
}

- (IBAction)brown:(id)sender {
	[self newEntry:BROWN withMultiplier:BROWN_MULTIPLIER];
}

- (IBAction)red:(id)sender {
	[self newEntry:RED withMultiplier:RED_MULTIPLIER];
}

- (IBAction)orange:(id)sender {
	[self newEntry:ORANGE withMultiplier:ORANGE_MULTIPLIER];
}

- (IBAction)yellow:(id)sender {
	[self newEntry:YELLOW withMultiplier:YELLOW_MULTIPLIER];
}

- (IBAction)green:(id)sender {
	[self newEntry:GREEN withMultiplier:GREEN_MULTIPLIER];
}

- (IBAction)blue:(id)sender {
	[self newEntry:BLUE withMultiplier:BLUE_MULTIPLIER];
}

- (IBAction)violet:(id)sender {
	[self newEntry:VIOLET withMultiplier:VIOLET_MULTIPLIER];
}

- (IBAction)grey:(id)sender {
	[self newEntry:GREY withMultiplier:GREY_MULTIPLIER];
}

- (IBAction)white:(id)sender {
	[self newEntry:WHITE withMultiplier:WHITE_MULTIPLIER];
}

@end
