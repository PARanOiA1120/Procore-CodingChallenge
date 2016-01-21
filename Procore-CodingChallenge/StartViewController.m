//
//  StartViewController.m
//  Procore-CodingChallenge
//
//  Created by Ariel Xin on 1/19/16.
//  Copyright © 2016 Ariel-gnon. All rights reserved.
//

#import "StartViewController.h"
#import "PrimeViewController.h"


@interface StartViewController ()
@property (weak, nonatomic) IBOutlet UITextField *limit;
@property (weak, nonatomic) IBOutlet UIButton *getPrimes;
@property (nonatomic, readwrite) NSInteger upperLimit;

@end

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    primeList = [[NSMutableArray alloc] init];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)getPrimes:(id)sender {
    PrimeViewController *primeVC=[[PrimeViewController alloc] init];
    primeVC.limitStr = self.limit.text;
    CATransition *transition = [CATransition animation];
    transition.duration = 0.3;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromRight;
    [self.view.window.layer addAnimation:transition forKey:nil];
    
    [self presentViewController:primeVC animated:NO completion:^{}];
}

- (NSMutableArray *) getPrimeArray: (NSString *)upperBound{
    NSInteger limit = upperBound.intValue;
    NSMutableArray *numList = [[NSMutableArray alloc] init];
    NSNumber *yesObject = [NSNumber numberWithBool:YES];
    NSNumber *noObject = [NSNumber numberWithBool:NO];
    NSInteger nextPrime = 2;
    
    //mark 0 and 1 as composite
    [numList addObject:noObject];
    [numList addObject:noObject];
    
    //mark all numbers from 2 to n as prime
    for(int i = 2; i <= limit; i++){
        [numList addObject:yesObject];
    }
    
    for(int i = 2; i < limit; i++){
        if([[numList objectAtIndex:i] isEqual:yesObject]){
            NSInteger multiples = 2;
            nextPrime = i;

            while((nextPrime * multiples) <= limit){
                [numList replaceObjectAtIndex:(nextPrime * multiples) withObject:noObject];
                multiples++;
            }
        }
    }
    
    for(int i = 2; i <= limit; i++){
        if([[numList objectAtIndex:i] isEqual:yesObject]){
            NSString* prime = [NSString stringWithFormat:@"%i", i];
            [primeList addObject:prime];
            //NSLog(@"%d", i);
        }
    }
    
    return primeList;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
