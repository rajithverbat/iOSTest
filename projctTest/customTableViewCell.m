//
//  customTableViewCell.m
//  projctTest
//
//  Created by iOS Developer on 02/04/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import "customTableViewCell.h"

@implementation customTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setCellWithData:(classForTableCellData*)obj
{
    labelForDate.text = obj.stringForDate;
    labelForLocation.text = obj.stringForLocation;
    priceLabel.text = obj.stringForPrice;
}

@end
