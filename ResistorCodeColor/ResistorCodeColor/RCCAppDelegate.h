//
//  RCCAppDelegate.h
//  ResistorCodeColor
//
//  Created by Nicolas Senaud on 2013/11/30.
//  Copyright (c) 2013 Nicolas Senaud. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RCCAppDelegate : NSObject <NSApplicationDelegate>
{
	char currentState;
	NSInteger *resistor;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *resistorDisplay;
@property (assign) IBOutlet NSLevelIndicator *state;

- (IBAction)black:(id)sender;
- (IBAction)brown:(id)sender;
- (IBAction)red:(id)sender;
- (IBAction)orange:(id)sender;
- (IBAction)yellow:(id)sender;
- (IBAction)green:(id)sender;
- (IBAction)blue:(id)sender;
- (IBAction)violet:(id)sender;
- (IBAction)grey:(id)sender;
- (IBAction)white:(id)sender;
- (void)newEntry:(int)color withMultiplier:(int)multiplier;

@end
