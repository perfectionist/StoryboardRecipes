//
//  PRPViewController.h
//  Recipes
//
//  Created by David Loeffler on 1/10/12.
//  Copyright (c) 2012 e-tuitive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PRPRecipe.h"

@interface PRPViewController : UIViewController

@property(nonatomic, strong) IBOutlet UILabel *recipeTitle;
@property(nonatomic, strong) IBOutlet UITextView *directionsView;
@property(nonatomic, strong) IBOutlet UIImageView *imageView;
@property(nonatomic, strong) IBOutlet UILabel *prepTime;

@property(nonatomic, strong) NSNumberFormatter *formatter;
@property(nonatomic, strong) PRPRecipe *recipe;

- (IBAction)dismiss:(id)sender;
@end
