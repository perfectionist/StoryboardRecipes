//
//  PRPViewController.m
//  Recipes
//
//  Created by David Loeffler on 1/10/12.
//  Copyright (c) 2012 e-tuitive. All rights reserved.
//

#import "PRPViewController.h"

@interface PRPViewController ()

@end

@implementation PRPViewController

@synthesize recipeTitle = _recipeTitle;
@synthesize directionsView = _directionsView;
@synthesize imageView = _imageView;
@synthesize prepTime = _prepTime;
@synthesize formatter = _formatter;

@synthesize recipe = _recipe;

#pragma mark - Memory Management

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.formatter = [[NSNumberFormatter alloc] init];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.directionsView = nil;
    self.recipeTitle = nil;
    self.imageView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.recipeTitle.text = self.recipe.title;
    self.directionsView.text = self.recipe.directions;
    if(nil != self.recipe.image) {
        self.imageView.image = self.recipe.image;
    }
    self.prepTime.text =[self.formatter stringFromNumber:self.recipe.preparationTime];
}

- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
