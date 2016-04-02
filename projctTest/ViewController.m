//
//  ViewController.m
//  projctTest
//
//  Created by iOS Developer on 02/04/16.
//  Copyright © 2016 iOS Developer. All rights reserved.
//

#import "ViewController.h"
#import "customSectionTableViewCell.h"
#import "customTableViewCell.h"
#import "customCollectionViewCell.h"
@interface ViewController ()

@end

@implementation classForTableDesign

- (id)copyWithZone:(NSZone *)zone {
    classForTableDesign *obj = [[[self class] allocWithZone:zone] init];
    if(obj) {
        obj.sectionTitle = self.sectionTitle;
        obj.arrayForCellData = self.arrayForCellData;
        
    }
    return obj;
}

- (id) init
{
    if (self = [super init])
    {
            self.sectionTitle = @"";
            self.arrayForCellData = [[NSMutableArray alloc] init];
    }
    return self;
}

@end

@implementation classForTableCellData

- (id)copyWithZone:(NSZone *)zone {
    classForTableCellData *obj = [[[self class] allocWithZone:zone] init];
    if(obj) {
        obj.stringForLocation = self.stringForLocation;
        obj.stringForDate = self.stringForDate;
        obj.stringForPrice = self.stringForPrice;
        
    }
    return obj;
}

- (id) init
{
    if (self = [super init])
    {
        self.stringForLocation = @"";
        self.stringForDate = @"";
        self.stringForPrice = @"";
    }
    return self;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arrayForSectionWithData = [[NSMutableArray alloc] init];
    [self setDataForTable];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setDataForTable
{
    classForTableDesign *objForSection = [[classForTableDesign alloc] init];
    objForSection.sectionTitle = @"THIS WEEK";
    
    NSMutableArray *arrayForTableCell = [[NSMutableArray alloc] init];
    classForTableCellData *objTableCellData = [[classForTableCellData alloc] init];
    objTableCellData.stringForLocation = @"Target (Ballantyne Location)";
    objTableCellData.stringForDate = @"February 6th, 2016";
    objTableCellData.stringForPrice = @"- $549.31";
    
    [arrayForTableCell addObject:objTableCellData];
    
    objTableCellData = [[classForTableCellData alloc] init];
    objTableCellData.stringForLocation = @"Target.com";
    objTableCellData.stringForDate = @"February 3rd, 2016";
    objTableCellData.stringForPrice = @"- $215.04";
    
    [arrayForTableCell addObject:objTableCellData];
    
    objForSection.arrayForCellData = arrayForTableCell;
    
    
    [arrayForSectionWithData addObject:objForSection];
    
    //////////////////////////////////////////////////
    
    
    objForSection = [[classForTableDesign alloc] init];
    objForSection.sectionTitle = @"LAST MONTH";
    
    arrayForTableCell = [[NSMutableArray alloc] init];
    objTableCellData = [[classForTableCellData alloc] init];
    objTableCellData.stringForLocation = @"Target (Tega Cay Location)";
    objTableCellData.stringForDate = @"February 6th, 2016";
    objTableCellData.stringForPrice = @"- $15.29";
    
    [arrayForTableCell addObject:objTableCellData];
    objForSection.arrayForCellData = arrayForTableCell;
    
    [arrayForSectionWithData addObject:objForSection];
    
}


#pragma mark - UITableView Delegates

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [arrayForSectionWithData count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    classForTableDesign *objSection = (classForTableDesign*)[arrayForSectionWithData objectAtIndex:section];
    return [objSection.arrayForCellData count];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    customSectionTableViewCell *cell = (customSectionTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"sectionCell"];
    
    classForTableDesign *objSection = (classForTableDesign*)[arrayForSectionWithData objectAtIndex:section];
    if (cell == nil) {
        cell = [[customSectionTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                  reuseIdentifier:@"sectionCell"];
    }
    [cell setCellWithStringTitle:objSection.sectionTitle];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 29.0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    customTableViewCell *cell = (customTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"tableCell"];
    
    classForTableDesign *objSection = (classForTableDesign*)[arrayForSectionWithData objectAtIndex:indexPath.section];
    classForTableCellData *objTableData = (classForTableCellData*)[objSection.arrayForCellData objectAtIndex:indexPath.row];
    
    
    if (cell == nil) {
        cell = [[customTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                                 reuseIdentifier:@"tableCell"];
    }
    [cell setCellWithData:objTableData];
    return cell;
}


#pragma mark - CollectionView Delegates

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 10;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    customCollectionViewCell *cell = (customCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"customCollectionCell" forIndexPath:indexPath];
    
    cell.imgViewForCell.image = [UIImage imageNamed:@"card"];
    return cell;
    
}


@end
