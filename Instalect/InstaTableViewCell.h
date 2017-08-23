//
//  InstaTableViewCell.h
//  Instalect
//
//  Created by Sam Meech-Ward on 2017-08-22.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InstaTableViewCell : UITableViewCell
    @property (weak, nonatomic) IBOutlet UIImageView *imageVoiew;
    @property (weak, nonatomic) IBOutlet UILabel *userLabel;
    @property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end
