//
//  RecipeCollectionViewCell.m
//  PhotoCollection
//
//  Created by Ginny Fahs on 1/30/19.
//  Copyright © 2019 Ginny's Games. All rights reserved.
//

#import "RecipeCollectionViewCell.h"

@implementation RecipeCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _recipeImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        [self.contentView addSubview: _recipeImageView];
        
        _frameView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo-frame.png"]];
        [self.contentView addSubview: _frameView];
        
    }

    return self;
}

//- (instancetype)initWithCoder:(NSCoder *)aDecoder{
//    return [super initWithCoder:aDecoder];
//}
//
//- (instancetype)initWithFrame:(CGRect)frame
//{
//    return [super initWithFrame:frame];
//}
//
//- (void)awakeFromNib
//{
//    [super awakeFromNib];
//
//    [[NSBundle mainBundle] loadNibNamed:@"RecipeCollectionViewCell" owner:self options:nil];
//}

@end
