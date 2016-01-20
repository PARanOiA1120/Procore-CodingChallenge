//
//  AppDelegate.h
//  Procore-CodingChallenge
//
//  Created by Ariel Xin on 1/19/16.
//  Copyright © 2016 Ariel-gnon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

+ (AppDelegate *)delegate;
- (void)startPage;
- (void)getPrimes;


@end

