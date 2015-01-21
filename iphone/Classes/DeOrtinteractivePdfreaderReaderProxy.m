/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2015 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "DeOrtinteractivePdfreaderReaderProxy.h"
#import "DeOrtinteractivePdfreaderReader.h"
#import "TiUtils.h"

@implementation DeOrtinteractivePdfreaderReaderProxy

- (void)dismissReaderViewController:(ReaderViewController *)viewController
{
    if ([self _hasListeners:@"didCloseReader"]) {
        [self fireEvent:@"didCloseReader" withObject:@{} propagate:YES];
    }
}


-(void)updateDocument:(id)args {
    TiThreadPerformOnMainThread(^{
        [(DeOrtinteractivePdfreaderReader*)[self view] updateDocument:args];
    }, NO);
}

@end
