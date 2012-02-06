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
    self.recipe = nil;
    self.directionsView = nil;
    self.imageView = nil;
    self.prepTime = nil;
    self.formatter = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.title = self.recipe.title;
    self.directionsView.text = self.recipe.directions;
    if(nil != self.recipe.image) {
        self.imageView.image = self.recipe.image;
    }
    self.prepTime.text =[self.formatter stringFromNumber:self.recipe.preparationTime];
}

@end
