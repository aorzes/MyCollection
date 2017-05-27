//
//  ViewController.m
//  CollectionView
//
//  Created by Anton Orzes on 27/05/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import "ViewController.h"
#import "CollectionCellCollectionViewCell.h"

@interface ViewController ()
{
    NSArray *myArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    myArray = @[@"jedan",@"dva",@"tri",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11"];
    self.myCollection.dataSource =self;
    self.myCollection.delegate =self;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return myArray.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionCellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    cell.labela1.text = [myArray objectAtIndex:indexPath.item];
    return cell;
}


@end
