//
//  PRPRecipesListViewController.h
//  Recipes
//
//  Created by David Loeffler on 1/16/12.
//  Copyright (c) 2012 e-tuitive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PRPRecipesListDataSource.h"
#import "PRPViewController.h"

@interface PRPRecipesListViewController : UITableViewController

@property(nonatomic, strong) id <PRPRecipesListDataSource> dataSource;

@end
