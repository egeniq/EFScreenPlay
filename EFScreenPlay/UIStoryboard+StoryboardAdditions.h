//
//  UIStoryboard+StoryboardAdditions.h
//  EFScreenPlay
//
//  Created by Johan Kool on 24/4/2014.
//  Copyright (c) 2014 Egeniq. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIStoryboard (StoryboardAdditions)

/**
 *  Get a storyboard using its short name
 *
 *  This uses the convention that storyboards for iPad have the '_iPad'
 *  postfix and those for iPhone have the '_iPhone' post fix. 
 *
 *  E.g. get 'Login' and it will automatically return 'Login_iPhone'
 *
 *  @param storyboardName  Short name of storyboard
 *
 *  @return The storyboard
 */
+ (UIStoryboard *)storyboardWithShortName:(NSString *)name;

@end
