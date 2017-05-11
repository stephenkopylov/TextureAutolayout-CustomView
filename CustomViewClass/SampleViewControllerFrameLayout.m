//
//  SampleViewControllerFrameLayout.m
//  CustomViewClass
//
//  Created by Stepan Kopylov on 11/05/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import "SampleViewControllerFrameLayout.h"

@interface SampleViewControllerFrameLayout ()

@end

@implementation SampleViewControllerFrameLayout

- (instancetype)init
{
    self = [super initWithNode:[[ASDisplayNode alloc] initWithViewBlock:^UIView *_Nonnull {
        return [UIView new];
    }]];
    
    if ( self ) {
        self.node.backgroundColor = [UIColor redColor];
        
        ASDisplayNode *addedNode = [ASDisplayNode new];
        addedNode.backgroundColor = [UIColor greenColor];
        addedNode.frame = CGRectMake(0.f, 0.f, 100.f, 100.f);
        [self.node addSubnode:addedNode];
    }
    
    return self;
}


@end
