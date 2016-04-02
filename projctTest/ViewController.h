//
//  ViewController.h
//  projctTest
//
//  Created by iOS Developer on 02/04/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface classForTableDesign: NSObject

     @property (nonatomic,strong) NSString *sectionTitle;
     @property (nonatomic,strong) NSMutableArray *arrayForCellData;


@end

@interface classForTableCellData : NSObject

     @property (nonatomic,strong) NSString *stringForLocation;
     @property (nonatomic,strong) NSString *stringForDate;
     @property (nonatomic,strong) NSString *stringForPrice;


@end


@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    IBOutlet UITableView *tblViewForPriceList;
    NSMutableArray *arrayForSectionWithData;
}


@end

