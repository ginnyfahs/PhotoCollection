//
//  RecipeCollectionViewController.m
//  PhotoCollection
//
//  Created by Ginny Fahs on 1/30/19.
//  Copyright © 2019 Ginny's Games. All rights reserved.
//

#import "RecipeCollectionViewController.h"
#import "RecipeCollectionViewCell.h"

@interface RecipeCollectionViewController ()

@property(nonatomic, strong) UICollectionViewFlowLayout *flowLayout;

@end

@implementation RecipeCollectionViewController

{
    NSArray *recipeImages;
}

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    NSLog(@"Hitting RecipeCollectionViewController viewDidLoad");
    [super viewDidLoad];
    
    // Initialize recipe image array
    recipeImages = [NSArray arrayWithObjects:@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", @"green_tea.jpg", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"starbucks_coffee.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg", @"white_chocolate_donut.jpg", nil];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[RecipeCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
//    self.collectionView.collectionViewLayout = flowLayout;
//    [self.collectionView layoutSubviews];
//    [self.collectionView layoutIfNeeded];
    NSLog(@"recipeImages, %@", recipeImages);
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return recipeImages.count;
}

// where is this even getting called?
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"inside collectionview");

    RecipeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
//    cell.backgroundColor = [UIColor redColor];
    NSLog(@"cell %@", cell);

    // think this line is the issue
    UIImageView *recipeImageView = cell.recipeImageView;
    NSLog(@"recipeImageView %@", recipeImageView);

    cell.recipeImageView.image =  [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
//    recipeImageView.image = [UIImage imageNamed:@"angry_birds_cake"];
    // Configure the cell
    NSLog(@"cell %@", cell);

    return cell;
}


@end
