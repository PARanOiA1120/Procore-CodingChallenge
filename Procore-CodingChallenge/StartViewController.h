//
//  StartViewController.h
//  Procore-CodingChallenge
//
//  Created by Ariel Xin on 1/19/16.
//  Copyright © 2016 Ariel-gnon. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSMutableArray *primeList;

@interface StartViewController : UIViewController<UIAlertViewDelegate>

-(NSMutableArray *)getPrimeArray:(NSString *)upperBound;

@end
