//
//  DCTRTableViewCell.h
//  DCTRDoctors
//
//  Created by Voitenko Daniil on 25.08.15.
//  Copyright (c) 2015 Voitenko Daniil. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const DCTRDoctorsCellIdentifier;

@class DCTRDoctors;

@interface DCTRTableViewCell : UITableViewCell

-(void)setDoctor:(DCTRDoctors *)doctor;

@end
