//
//  BookInfoViewController.m
//  FirstApp
//
//  Created by DONGMIN LEE on 15/08/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "BookInfoViewController.h"
#import "PhenomenalBook.h"

@interface BookInfoViewController ()

@end

@implementation BookInfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _nameLabel.text = _selectedBook.name;
    _authorLabel.text = _selectedBook.author;
    _publishedLabel.text = _selectedBook.published;
    _genreLabel.text = _selectedBook.genre;
    _coverImageView.image = _selectedBook.cover;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/







- (IBAction)closeButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)shareButtonTapped:(id)sender {

}

@end
