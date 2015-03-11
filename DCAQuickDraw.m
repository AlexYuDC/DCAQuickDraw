//
//  DCAQuickDraw.m
//  
//
//  Created by Alex Yu on 3/11/15.
//  Copyright (c) 2015 no Ltd. All rights reserved.
//

#import "DCAQuickDraw.h"

@implementation DCAQuickDraw

void DCAQuickDrawRoundedRect(CGContextRef context, CGRect rect, CGFloat radius){
    
    CGFloat x = rect.origin.x;
    CGFloat y = rect.origin.y;
    CGFloat width = rect.size.width;
    CGFloat height = rect.size.height;
    
    
    CGContextMoveToPoint(context, radius + x, y);
    CGContextAddLineToPoint(context, width - radius + x, y);
    CGContextAddArc(context, width - radius + x, radius + y, radius, -0.5 * M_PI, 0.0, 0);
    CGContextAddLineToPoint(context, width + x, height - radius + y);
    CGContextAddArc(context, width - radius + x, height - radius + y, radius, 0.0, 0.5 * M_PI, 0);
    CGContextAddLineToPoint(context, radius + x, height + y);
    CGContextAddArc(context, radius + x, height - radius + y, radius, 0.5 * M_PI, M_PI, 0);
    CGContextAddLineToPoint(context, 0 + x, radius + y);
    CGContextAddArc(context, radius + x, radius + y, radius, M_PI, 1.5 * M_PI, 0);
    CGContextClosePath(context);
    
    CGContextDrawPath(context, kCGPathFill);
    CGContextDrawPath(context, kCGPathFillStroke);
}

@end
