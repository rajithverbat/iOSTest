//
//  customCollectionViewCell.m
//  projctTest
//
//  Created by iOS Developer on 02/04/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import "customCollectionViewCell.h"

@implementation customCollectionViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.imgViewForCell.layer.cornerRadius = 5.0f;
    self.imgViewForCell.clipsToBounds = YES;
}



@end


