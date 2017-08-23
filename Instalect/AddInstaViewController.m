//
//  AddInstaViewController.m
//  Instalect
//
//  Created by Sam Meech-Ward on 2017-08-22.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "AddInstaViewController.h"
#import "InstaPost.h"

@interface AddInstaViewController () <UITextFieldDelegate>

@end

@implementation AddInstaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
    
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    NSString *title = textField.text;
    
    InstaPost *post = [InstaPost object];
    post.title = title;
    post.postDescription = @"Linh said cunt";
    post.type = InstaPostTypeRegular;
    
    post.ACL = [PFACL ACLWithUser:[PFUser currentUser]];
    
    [post saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
            return;
        }
        
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
    
    
    
    return YES;
}

@end
