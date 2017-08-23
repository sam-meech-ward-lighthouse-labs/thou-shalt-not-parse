//
//  ViewController.m
//  Instalect
//
//  Created by Sam Meech-Ward on 2017-08-22.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"
#import "InstaTableViewCell.h"
#import "InstaPost.h"

@interface ViewController () <UITableViewDataSource>
    
@property (nonatomic, strong) NSArray<InstaPost *> *posts;
    @property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}
    
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    PFQuery *query = [InstaPost query];
    [query whereKey:@"postDescription" hasPrefix:@"Linh"];
    [query whereKey:@"type" equalTo:@(0)];
    [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error);
            return;
        }
        
        self.posts = objects;
        [self.tableView reloadData];
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

    
#pragma mark - Table View
    
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.posts.count;
}
    
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    InstaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    InstaPost *post = self.posts[indexPath.row];
    
    cell.titleLabel.text = post.title;
    cell.userLabel.text = post.postDescription;
    
    return cell;
}

@end
