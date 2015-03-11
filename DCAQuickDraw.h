//
//  DCAQuickDraw.h
//  
//
//  Created by Alex Yu on 3/11/15.
//  Copyright (c) 2015 no Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

void DCAQuickDrawRoundedRect(CGContextRef context, CGRect rect, CGFloat radius);

@interface DCAQuickDraw : NSObject

@end