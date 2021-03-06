//
//  PRPRecipesListDataSource.h
//  Recipes
//
//  Created by David Loeffler on 1/18/12.
//  Copyright (c) 2012 e-tuitive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PRPRecipe.h"

@protocol PRPRecipesListDataSource <NSObject>

- (NSInteger)recipeCount;
- (PRPRecipe *)recipeAtIndex:(NSInteger)index;
- (void)deleteRecipeAtIndex:(NSInteger)index;

@end
