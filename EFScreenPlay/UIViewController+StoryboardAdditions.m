//
//  UIViewController+StoryboardAdditions.m
//  EFScreenPlay
//
//  Created by Ivo Jansch on 19/03/14.
//  Copyright (c) 2014 Egeniq. All rights reserved.
//

#import "UIViewController+StoryboardAdditions.h"

#import "UIStoryBoard+StoryboardAdditions.h"

@implementation UIViewController (StoryboardAdditions)

- (UIViewController *)presentModalStoryboard:(NSString *)storyboardName transitionStyle:(UIModalTransitionStyle)transitionStyle animated:(BOOL)animated {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithShortName:storyboardName];
    UIViewController *initialVC = [storyboard instantiateInitialViewController];
    initialVC.modalTransitionStyle = transitionStyle;
    [self presentViewController:initialVC animated:animated completion:nil];
    return initialVC;
}

- (UIViewController *)presentModalStoryboard:(NSString *)storyboardName viewController:(NSString *)viewController transitionStyle:(UIModalTransitionStyle)transitionStyle animated:(BOOL)animated {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithShortName:storyboardName];
    UIViewController *customVC = [storyboard instantiateViewControllerWithIdentifier:viewController];
    customVC.modalTransitionStyle = transitionStyle;
    [self presentViewController:customVC animated:animated completion:nil];
    return customVC;
}

- (UIViewController *)pushStoryboard:(NSString *)storyboardName animated:(BOOL)animated {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithShortName:storyboardName];
    UIViewController *initialVC = [storyboard instantiateInitialViewController];
    [self.navigationController pushViewController:initialVC animated:animated];
    return initialVC;
}

- (UIViewController *)pushStoryboard:(NSString *)storyboardName viewController:(NSString *)viewController animated:(BOOL)animated {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithShortName:storyboardName];
    UIViewController *customVC = [storyboard instantiateViewControllerWithIdentifier:viewController];
    [self.navigationController pushViewController:customVC animated:animated];
    return customVC;
}

@end
