/**
 * PDFReader
 *
 * Created by Your Name
 * Copyright (c) 2015 Your Company. All rights reserved.
 */

#import "DeOrtinteractivePdfreaderModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation DeOrtinteractivePdfreaderModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"6dd395fc-3b6d-4f1a-979f-6bbdf7886e8a";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"de.ortinteractive.pdfreader";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];

	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably

	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

@end
