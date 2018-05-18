//
//  CrayonsViewController.h
//  Crayons
//
//  Created by C4Q on 5/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CrayonsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView* crayonsTableView;
@property (strong, nonatomic) NSArray *crayons;

@end
