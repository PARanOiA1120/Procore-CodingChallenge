//
//  PrimeViewController.h
//  Procore-CodingChallenge
//
//  Created by Ariel Xin on 1/19/16.
//  Copyright © 2016 Ariel-gnon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrimeViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tabelView;
@property (nonatomic, strong) NSMutableArray *dataSource;
@property (nonatomic, retain) NSString *limitStr;
@end
