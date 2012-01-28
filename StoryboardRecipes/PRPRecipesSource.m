//
//  PRPRecipesSource.m
//  Recipes
//
//  Created by David Loeffler on 1/18/12.
//  Copyright (c) 2012 e-tuitive. All rights reserved.
//

#import "PRPRecipesSource.h"
#import "PRPRecipe.h"

@interface PRPRecipesSource()

@property(nonatomic, strong) NSMutableArray *recipes;

@end

@implementation PRPRecipesSource

@synthesize recipes = _recipes;

- (NSArray *)recipes {
    if(nil == _recipes) {
        NSMutableArray *localRecipes = [NSMutableArray array];
        PRPRecipe *recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"0 - Put some stuff in, and the other stuff, then stir"; recipe.title = @"0 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        recipe.preparationTime = [NSNumber numberWithInt:30];
        [localRecipes addObject:recipe];

        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"1 - Put some stuff in, and the other stuff, then stir"; recipe.title = @"1 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        recipe.preparationTime = [NSNumber numberWithInt:31];
        [localRecipes addObject:recipe];

        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"2 - Put some stuff in, and the other stuff, then stir";
        recipe.title = @"2 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        recipe.preparationTime = [NSNumber numberWithInt:32];
        [localRecipes addObject:recipe];

        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"3 - Put some stuff in, and the other stuff, then stir";
        recipe.title = @"3 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        recipe.preparationTime = [NSNumber numberWithInt:33];
        [localRecipes addObject:recipe];

        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"4 - Put some stuff in, and the other stuff, then stir";
        recipe.title = @"4 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        recipe.preparationTime = [NSNumber numberWithInt:34];
        [localRecipes addObject:recipe];

        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"5 - Put some stuff in, and the other stuff, then stir";
        recipe.title = @"5 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        recipe.preparationTime = [NSNumber numberWithInt:35];
        [localRecipes addObject:recipe];

        NSString *directions = @"Put the flour and other dry ingredients in a bowl, \
        stir in the eggs until evenly moist. Add chocolate chips and stir in until even. \
        Place tablespoon sized portions on greased cookie sheet and bake at 350Â° for \
        6 minutes.";
        recipe = [[PRPRecipe alloc] init];
        recipe.title = @"Chocolate Chip Cookies";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        recipe.directions = directions;
        recipe.preparationTime = [NSNumber numberWithInt:36];
        [localRecipes addObject:recipe];

        self.recipes = localRecipes;
    }
    return _recipes;
}

#pragma mark - Recipe List Data Source Methods

- (NSInteger)recipeCount {
    return [self.recipes count];
}

- (PRPRecipe *)recipeAtIndex:(NSInteger)index {
    return [self.recipes objectAtIndex:index];
}

- (void)deleteRecipeAtIndex:(NSInteger)index {
    [self.recipes removeObjectAtIndex:index];
}

@end
