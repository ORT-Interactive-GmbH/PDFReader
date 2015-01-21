/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2015 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "DeOrtinteractivePdfreaderReader.h"

@implementation DeOrtinteractivePdfreaderReader

-(UIView*)readerView
{
    if( readerView == nil )
    {
        NSString *filePath = [TiUtils stringValue:[self.proxy valueForKey:@"pdf"]];
        NSString *password = [TiUtils stringValue:[self.proxy valueForUndefinedKey:@"password"]];
        ReaderDocument *document = [ReaderDocument withDocumentFilePath:filePath password:password];
        controller = [[ReaderViewController alloc] initWithReaderDocument:document];
        readerView = [controller view];
        [readerView setFrame:[self frame]];
        [self addSubview:readerView];
        [controller viewWillAppear:NO];
        [controller viewDidAppear:NO];
        [controller updateContentViewsForModule];
        
    }
    return readerView;
}


-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    if (readerView != nil) {
        [TiUtils setView:readerView positionRect:bounds];
        [controller viewWillAppear:NO];
        [controller viewDidAppear:NO];
        [controller updateContentViewsForModule];
    }
}

-(void)updateDocument:(id)args
{
    [controller updateContentViewsForModule];
}

-(void)setPdf_:(id)minimum
{
    [self readerView];
}



@end
