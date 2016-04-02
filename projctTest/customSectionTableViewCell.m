//
//  customSectionTableViewCell.m
//  projctTest
//
//  Created by iOS Developer on 02/04/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import "customSectionTableViewCell.h"

@implementation customSectionTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setCellWithStringTitle:(NSString*)strTitle
{
    labelForSection.text = strTitle;
}
@end
