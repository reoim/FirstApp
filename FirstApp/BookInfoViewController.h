//
//  BookInfoViewController.h
//  FirstApp
//
//  Created by DONGMIN LEE on 15/08/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhenomenalBook.h"

@class NewBookViewController;
@protocol NewBookViewControllerDelegate <NSObject>

-(void)newBookViewController:(NewBookViewController *)controller hasCreatedBook:(PhenomenalBook *)newBook;

@end



@interface BookInfoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *publishedLabel;
@property (weak, nonatomic) IBOutlet UILabel *genreLabel;
@property (weak, nonatomic) IBOutlet UITextView *synopsisTextView;
@property (weak, nonatomic) IBOutlet UIImageView *coverImageView;
@property PhenomenalBook *selectedBook;
@end
