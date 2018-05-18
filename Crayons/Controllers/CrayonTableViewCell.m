//
//  CrayonTableViewCell.m
//  Crayons
//
//  Created by C4Q on 5/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "CrayonTableViewCell.h"
#import "Crayon.h"
#import "UIColor+Inverse.h"

@implementation CrayonTableViewCell

-(void)configureCellWith:(Crayon *)crayon {
    self.crayonNameLabel.text = crayon.name;
    self.hexNumLabel.text = crayon.hex;
    self.cellBackgroundColor = [UIColor colorWithRed:crayon.red/255.0 green:crayon.green/255.0 blue:crayon.blue/255.0 alpha:1.0];
    self.backgroundColor = _cellBackgroundColor;
    self.crayonNameLabel.textColor = [_cellBackgroundColor inverseColor];
    self.hexNumLabel.textColor = [_cellBackgroundColor inverseColor];
}


@end
