//
//  CrayonsViewController.m
//  Crayons
//
//  Created by C4Q on 5/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "CrayonsViewController.h"
#import "Crayon.h"

#define CELLID "CrayonCell"

@interface CrayonsViewController ()

@end

@implementation CrayonsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupBackground];
    [self allocInitSubview];
    [self configureSubviews];
    [self addSubviews];
    [self configureContraints];
    [self loadCrayons];
    
}

#pragma mark - Setup UI

-(void)setupBackground {
    self.view.backgroundColor = UIColor.magentaColor;
}

-(void)allocInitSubview {
    _crayonsTableView = [[UITableView alloc] initWithFrame:CGRectZero];
    _crayons = [[NSArray alloc] init];
}

-(void)configureSubviews {
    [self configureTableView];
}

-(void)configureTableView {
    self.crayonsTableView.delegate = self;
    self.crayonsTableView.dataSource = self;
    //MARK :- TODO: add nib for tableview cell
    UINib *nib = [UINib nibWithNibName:@"CrayonTableViewCell" bundle:nil];
    [self.crayonsTableView registerNib:nib forCellReuseIdentifier:@CELLID];
}

-(void)addSubviews {
    [self.view addSubview:self.crayonsTableView];
}


-(void)configureContraints {
    self.crayonsTableView.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [self.crayonsTableView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
                                              [self.crayonsTableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
                                              [self.crayonsTableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
                                              [self.crayonsTableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]
                                              ]];
}

#pragma mark - Load Crayons

-(void)loadCrayons {
    self.crayons = [Crayon allTheCrayons];
    
}







/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITableView DataSource

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    return [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}



@end
