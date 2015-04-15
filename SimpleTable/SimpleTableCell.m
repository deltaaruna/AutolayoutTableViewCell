//
//  SimpleTableCell.m
//  SimpleTable
//
//  Created by Aruna Withanage on 16/8/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.//

#import "SimpleTableCell.h"

@implementation SimpleTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        //_imageArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setUpImages:(UITableViewCell*)cell {
    [_imageArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [self.contentView addSubview:(UIImageView*)_imageArray[idx]];
    }];
    switch (_imageArray.count) {
        case 1: {
            UIImageView *imgViewOne = (UIImageView*)_imageArray[0];
            imgViewOne.frame = CGRectMake(0, 0, 313, 178);
            imgViewOne.backgroundColor = [UIColor redColor];
            imgViewOne.translatesAutoresizingMaskIntoConstraints = NO;
            
            NSDictionary *views = NSDictionaryOfVariableBindings(imgViewOne);
            
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-5-[imgViewOne(imgViewOne)]-5-|" options:0 metrics:nil views:views]];
            
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[imgViewOne]-5-|" options:0 metrics:nil views:views]];
        }
            break;
        case 2: {
            UIImageView *imgViewOne = _imageArray[0];
            imgViewOne.frame = CGRectMake(0, 0, 154, 178);
            UIImageView *imgViewTwo = _imageArray[1];
            imgViewTwo.frame = CGRectMake(163, 0, 154, 178);
            imgViewOne.backgroundColor = [UIColor redColor];
            imgViewTwo.backgroundColor = [UIColor blackColor];
            
            imgViewOne.translatesAutoresizingMaskIntoConstraints = NO;
            imgViewTwo.translatesAutoresizingMaskIntoConstraints = NO;
            
            NSDictionary *views = NSDictionaryOfVariableBindings(imgViewOne,imgViewTwo);
            
             [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-5-[imgViewOne(imgViewOne)]-5-[imgViewTwo(imgViewOne)]-5-|" options:0 metrics:nil views:views]];
            
           [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[imgViewOne]-5-|" options:0 metrics:nil views:views]];
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[imgViewTwo]-5-|" options:0 metrics:nil views:views]];
        }
            break;
        case 3: {
            UIImageView *imgViewOne = _imageArray[0];
            imgViewOne.frame = CGRectMake(0, 0, 222, 178);
            UIImageView *imgViewTwo = _imageArray[1];
            imgViewTwo.frame = CGRectMake(230, 0, 86.5, 86.5);
            UIImageView *imgViewThree = _imageArray[2];
            imgViewThree.frame = CGRectMake(230, 86.5, 86.5, 86.5);
            imgViewOne.backgroundColor = [UIColor redColor];
            imgViewTwo.backgroundColor = [UIColor blackColor];
            imgViewThree.backgroundColor = [UIColor greenColor];
            
            imgViewOne.translatesAutoresizingMaskIntoConstraints = NO;
            imgViewTwo.translatesAutoresizingMaskIntoConstraints = NO;
            imgViewThree.translatesAutoresizingMaskIntoConstraints = NO;
            
            NSLayoutConstraint *ratioCons =[NSLayoutConstraint
                                               constraintWithItem:imgViewOne
                                               attribute:NSLayoutAttributeWidth
                                               relatedBy:NSLayoutRelationEqual
                                               toItem:imgViewTwo
                                               attribute:NSLayoutAttributeWidth
                                               multiplier:3
                                               constant:0];
            
            [cell.contentView addConstraint: ratioCons];
            
            NSDictionary *views = NSDictionaryOfVariableBindings(imgViewOne, imgViewTwo, imgViewThree);
            
            // Horizontal layout - note the options for aligning the top and bottom of all views
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-5-[imgViewOne(imgViewOne)]-5-[imgViewTwo]-5-|" options:0 metrics:nil views:views]];
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-5-[imgViewOne(imgViewOne)]-5-[imgViewThree]-5-|" options:0 metrics:nil views:views]];
            
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[imgViewOne]-5-|" options:0 metrics:nil views:views]];
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[imgViewTwo]-5-[imgViewThree(imgViewTwo)]-5-|" options:0 metrics:nil views:views]];
        }
            break;
        case 4: {
            UIImageView *imgViewOne = _imageArray[0];
            imgViewOne.frame = CGRectMake(0, 0, 125, 178);
            UIImageView *imgViewTwo = _imageArray[1];
            imgViewTwo.frame = CGRectMake(134, 0, 182.5, 115.5);
            UIImageView *imgViewThree = _imageArray[2];
            imgViewThree.frame = CGRectMake(134, 118, 89, 58);
            UIImageView *imgViewFour = _imageArray[3];
            imgViewFour.frame = CGRectMake(228, 118, 89, 58);
            
            imgViewOne.backgroundColor = [UIColor redColor];
            imgViewTwo.backgroundColor = [UIColor blackColor];
            imgViewThree.backgroundColor = [UIColor greenColor];
            imgViewFour.backgroundColor = [UIColor blueColor];
            
            imgViewOne.translatesAutoresizingMaskIntoConstraints = NO;
            imgViewTwo.translatesAutoresizingMaskIntoConstraints = NO;
            imgViewThree.translatesAutoresizingMaskIntoConstraints = NO;
            imgViewFour.translatesAutoresizingMaskIntoConstraints = NO;
            
            NSLayoutConstraint *ratioConsOne =[NSLayoutConstraint
                                            constraintWithItem:imgViewOne
                                            attribute:NSLayoutAttributeWidth
                                            relatedBy:NSLayoutRelationEqual
                                            toItem:imgViewTwo
                                            attribute:NSLayoutAttributeWidth
                                            multiplier:3
                                            constant:0];
            
            NSLayoutConstraint *ratioConsTwo =[NSLayoutConstraint
                                               constraintWithItem:imgViewOne
                                               attribute:NSLayoutAttributeWidth
                                               relatedBy:NSLayoutRelationEqual
                                               toItem:imgViewThree
                                               attribute:NSLayoutAttributeWidth
                                               multiplier:6
                                               constant:0];
            
            NSLayoutConstraint *ratioConsThree =[NSLayoutConstraint
                                               constraintWithItem:imgViewOne
                                               attribute:NSLayoutAttributeWidth
                                               relatedBy:NSLayoutRelationEqual
                                               toItem:imgViewFour
                                               attribute:NSLayoutAttributeWidth
                                               multiplier:6
                                               constant:0];
            
            [cell.contentView addConstraint: ratioConsOne];
            [cell.contentView addConstraint: ratioConsTwo];
            [cell.contentView addConstraint: ratioConsThree];
            
            NSDictionary *views = NSDictionaryOfVariableBindings(imgViewOne, imgViewTwo, imgViewThree, imgViewFour);
            
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-5-[imgViewOne(imgViewOne)]-5-[imgViewTwo]-5-|" options:0 metrics:nil views:views]];
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-5-[imgViewOne(imgViewOne)]-5-[imgViewThree]-5-[imgViewFour]-5-|" options:0 metrics:nil views:views]];
            
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[imgViewOne]-5-|" options:0 metrics:nil views:views]];
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[imgViewTwo]-5-[imgViewThree(imgViewTwo)]-5-|" options:0 metrics:nil views:views]];
            [cell.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[imgViewTwo]-5-[imgViewFour(imgViewTwo)]-5-|" options:0 metrics:nil views:views]];

        }
            break;
            
        default:
            break;
    }
    
}

-(void)updateConstraints{
    // add your constraints
    [super updateConstraints];
}

@end
