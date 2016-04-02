//
//  customSectionTableViewCell.h
//  projctTest
//
//  Created by iOS Developer on 02/04/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customSectionTableViewCell : UITableViewCell
{
    IBOutlet UILabel *labelForSection;
}

-(void)setCellWithStringTitle:(NSString*)strTitle;

@end
