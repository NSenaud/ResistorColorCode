//
//  RCCAppDelegate.h
//  ResistorCodeColor
//
//  Created by Nicolas Senaud on 2013/11/30.
//  Copyright (c) 2013 Nicolas Senaud – MIT License (MIT)
//

#import <Cocoa/Cocoa.h>

@interface RCCAppDelegate : NSObject <NSApplicationDelegate>
{
	// currentState is the current band which value is expected.
	// We call it 'state' because it looks like a state machine.
	char currentState;
	//NSInteger *resistor;
}

@property (assign) IBOutlet NSWindow *window;
// Display the resistor value.
@property (weak) IBOutlet NSTextField *resistorDisplay;
// Display the current band which value is expected.
@property (assign) IBOutlet NSLevelIndicator *state;

// Action from buttons...
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

// ... Which call that method with number and exposant in parameters.
- (void)newEntry:(int)color withMultiplier:(int)multiplier;

@end
