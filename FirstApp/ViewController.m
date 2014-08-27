//
//  ViewController.m
//  FirstApp
//
//  Created by DONGMIN LEE on 14/08/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "ViewController.h"
#import "BookInfoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _books = [[NSMutableArray alloc] init];
    PhenomenalBook *book = [[PhenomenalBook alloc] init];
    
    book.name = @"First book";
    book.author = @"First author";
    book.published = @"2001";
    book.genre = @"Comedy";
    book.cover = [UIImage imageNamed:@"firstbook.jpeg"];
    [_books addObject:book];
    
    book = [[PhenomenalBook alloc] init];
    book.name = @"Second book";
    book.author = @"Second author";
    book.published = @"2002";
    book.genre = @"Detective";
    book.cover = [UIImage imageNamed:@"secondbook.jpeg"];
    [_books addObject:book];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    
    PhenomenalBook *book = [_books objectAtIndex:indexPath.row];
    UILabel *ourLabel = (UILabel *) [cell viewWithTag:42];
    ourLabel.text = book.name;
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_books count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    BookInfoViewController *bookInfoViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BookInfoViewController"];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:bookInfoViewController];
    [self presentViewController:navigationController animated:YES completion:nil];
    bookInfoViewController.selectedBook = [_books objectAtIndex:indexPath.row];
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    [_books removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}


@end
