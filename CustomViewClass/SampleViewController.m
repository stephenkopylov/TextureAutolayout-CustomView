//
//  SampleViewController.m
//  CustomViewClass
//
//  Created by Stepan Kopylov on 11/05/2017.
//  Copyright © 2017 123. All rights reserved.
//

#import "SampleViewController.h"

@interface SampleViewController ()

@end

@implementation SampleViewController

- (instancetype)init
{
    //Try to use diffent methods to init the ASViewController
    
    //1
    //self = [super initWithNode:[ASDisplayNode new]];
    
    //2
    self = [super initWithNode:[[ASDisplayNode alloc] initWithViewBlock:^UIView *_Nonnull {
        return [UIView new];
    }]];
    
    if ( self ) {
        self.node.backgroundColor = [UIColor redColor];
        
        ASDisplayNode *addedNode = [ASDisplayNode new];
        addedNode.backgroundColor = [UIColor greenColor];
        [self.node addSubnode:addedNode];
        
        self.node.layoutSpecBlock = ^ASLayoutSpec *(ASDisplayNode *_Nonnull node, ASSizeRange constrainedSize) {
            ASInsetLayoutSpec *spec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(0.f, 0.f, 0.f, 0.f) child:addedNode];
            
            return spec;
        };
    }
    
    return self;
}


@end
