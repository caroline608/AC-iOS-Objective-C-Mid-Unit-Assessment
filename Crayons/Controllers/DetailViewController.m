//
//  DetailViewController.m
//  Crayons
//
//  Created by C4Q on 5/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

-(instancetype)initWithCrayon:(Crayon *)crayon {
    self = [super init];
    if(self) {
        _crayon = crayon;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
  
}

-(void)allocInitSubviews{
    _name = [[UILabel alloc] init];
    _red = [[UILabel alloc] init];
    _green = [[UILabel alloc] init];
    _blue = [[UILabel alloc] init];
    _alpha = [[UILabel alloc] init];
    _redSlider = [[UISlider alloc] initWithFrame:CGRectZero];
    _greenSlider = [[UISlider alloc] initWithFrame:CGRectZero];
    _blueSlider = [[UISlider alloc] initWithFrame:CGRectZero];
    _alphaStepper = [[UIStepper alloc]initWithFrame:CGRectZero];
}


-(void)configureSubviews {
    self.name.text = [self.crayon name];
    
}

-(void)addSubViews {
    [self.view addSubview:self.name];
}

-(void)configureConstraints {
    self.name.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [self.name.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:20],
                                              [self.name.centerXAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.centerXAnchor],
                                              
                                              ]];
}

@end
