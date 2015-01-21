/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2015 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#import "TiUIView.h"
#import "ReaderViewController.h"

@interface DeOrtinteractivePdfreaderReader : TiUIView {
@private
    ReaderViewController *controller;
    UIView* readerView;
}

-(UIView*)readerView;
-(void)updateDocument:(id)args;

@end
