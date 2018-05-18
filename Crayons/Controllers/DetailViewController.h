//
//  DetailViewController.h
//  Crayons
//
//  Created by C4Q on 5/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Crayon.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) UILabel* name;
@property (strong, nonatomic) UILabel* red;
@property (strong, nonatomic) UILabel* green;
@property (strong, nonatomic) UILabel* blue;
@property (strong, nonatomic) UILabel* alpha;
@property (strong, nonatomic) UISlider* redSlider;
@property (strong, nonatomic) UISlider* greenSlider;
@property (strong, nonatomic) UISlider* blueSlider;
@property (strong, nonatomic) UIStepper* alphaStepper;
@property (strong, nonatomic) UIButton* resetButton;

@property (strong, nonatomic) Crayon* crayon;

-(instancetype)initWithCrayon:(Crayon*) crayon;



@end
