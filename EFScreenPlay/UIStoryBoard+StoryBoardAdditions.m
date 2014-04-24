//
//  UIStoryBoard+StoryBoardAdditions.m
//  EFScreenPlay
//
//  Created by Johan Kool on 24/4/2014.
//  Copyright (c) 2014 Egeniq. All rights reserved.
//

#import "UIStoryBoard+StoryBoardAdditions.h"

@implementation UIStoryBoard (StoryBoardAdditions)

+ (UIStoryboard *)storyboardWithShortName:(NSString *)name {
    NSString *postFix = @"iPad";
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        postFix = @"iPhone";
    }
    return [UIStoryboard storyboardWithName:[NSString stringWithFormat:@"%@_%@", name, postFix] bundle:nil];
}

@end
