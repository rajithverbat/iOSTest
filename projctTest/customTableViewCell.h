//
//  customTableViewCell.h
//  projctTest
//
//  Created by iOS Developer on 02/04/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface customTableViewCell : UITableViewCell
{
    IBOutlet UILabel *labelForLocation;
    IBOutlet UILabel *labelForDate;
    IBOutlet UILabel *priceLabel;
}

-(void)setCellWithData:(classForTableCellData*)obj;

@end
