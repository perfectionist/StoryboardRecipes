//
//  PRPRecipe.h
//  Recipes
//
//  Created by David Loeffler on 1/10/12.
//  Copyright (c) 2012 e-tuitive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PRPRecipe : NSObject

@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *directions;
@property(nonatomic, strong) UIImage *image;
@property(nonatomic, copy) NSNumber *preparationTime;

@end
