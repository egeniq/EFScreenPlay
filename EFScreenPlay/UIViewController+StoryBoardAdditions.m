//
//  UIViewController+StoryBoardAdditions.m
//  EFScreenPlay
//
//  Created by Ivo Jansch on 19/03/14.
//  Copyright (c) 2014 Egeniq. All rights reserved.
//

#import "UIViewController+StoryBoardAdditions.h"

@implementation UIViewController (StoryBoardAdditions)

- (UIViewController *)presentModalStoryBoard:(NSString *)storyBoardName transitionStyle:(UIModalTransitionStyle)transitionStyle animated:(BOOL)animated {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithShortName:storyBoardName];
    UIViewController *initialVC = [storyboard instantiateInitialViewController];
    initialVC.modalTransitionStyle = transitionStyle;
    [self presentViewController:initialVC animated:animated completion:nil];
    return initialVC;
}

- (UIViewController *)presentModalStoryBoard:(NSString *)storyBoardName viewController:(NSString *)viewController transitionStyle:(UIModalTransitionStyle)transitionStyle animated:(BOOL)animated {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithShortName:storyBoardName];
    UIViewController *customVC = [storyboard instantiateViewControllerWithIdentifier:viewController];
    customVC.modalTransitionStyle = transitionStyle;
    [self presentViewController:customVC animated:animated completion:nil];
    return customVC;
}

- (UIViewController *)pushStoryBoard:(NSString *)storyBoardName animated:(BOOL)animated {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithShortName:storyBoardName];
    UIViewController *initialVC = [storyboard instantiateInitialViewController];
    [self.navigationController pushViewController:initialVC animated:animated];
    return initialVC;
}

- (UIViewController *)pushStoryBoard:(NSString *)storyBoardName viewController:(NSString *)viewController animated:(BOOL)animated {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithShortName:storyBoardName];
    UIViewController *customVC = [storyboard instantiateViewControllerWithIdentifier:viewController];
    [self.navigationController pushViewController:customVC animated:animated];
    return customVC;
}

@end
