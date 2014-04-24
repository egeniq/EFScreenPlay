//
//  UIViewController+StoryboardAdditions.h
//  EFScreenPlay
//
//  Created by Ivo Jansch on 19/03/14.
//  Copyright (c) 2014 Egeniq. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIViewController (StoryboardAdditions)

/**
 *  Presents initial view controller from a storyboard modally
 *
 *  @param storyBoardName  Short name of storyboard
 *  @param transitionStyle Transition style to use
 *  @param animated        Animation
 *
 *  @return The view controller being presented
 */
- (UIViewController *)presentModalStoryBoard:(NSString *)storyBoardName transitionStyle:(UIModalTransitionStyle)transitionStyle animated:(BOOL)animated;

/**
 *  Presents the view controller with the given identifier from a storyboard modally
 *
 *  @param storyBoardName  Short name of storyboard
 *  @param viewController  Storyboard identifier of view controller to be presented
 *  @param transitionStyle Transition style to use
 *  @param animated        Animation
 *
 *  @return The view controller being presented
 */
- (UIViewController *)presentModalStoryBoard:(NSString *)storyBoardName viewController:(NSString *)viewController transitionStyle:(UIModalTransitionStyle)transitionStyle animated:(BOOL)animated;

/**
 *  Pushes the initial view controller onto the navigation stack
 *
 *  @param storyBoardName Short name of storyboard
 *  @param animated       Animation
 *
 *  @return The view controller being pushed
 */
- (UIViewController *)pushStoryBoard:(NSString *)storyBoardName animated:(BOOL)animated;

/**
 *  Pushes the view controller with the given identifier from a storyboard onto the navigation stack
 *
 *  @param storyBoardName Short name of storyboard
 *  @param viewController Storyboard identifier of view controller to be presented
 *  @param animated       Animation
 *
 *  @return The view controller being pushed
 */
- (UIViewController *)pushStoryBoard:(NSString *)storyBoardName viewController:(NSString *)viewController animated:(BOOL)animated;

@end
