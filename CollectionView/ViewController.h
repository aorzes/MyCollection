//
//  ViewController.h
//  CollectionView
//
//  Created by Anton Orzes on 27/05/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *myCollection;


@end

