//
//  DCTRTableViewCell.m
//  DCTRDoctors
//
//  Created by Voitenko Daniil on 25.08.15.
//  Copyright (c) 2015 Voitenko Daniil. All rights reserved.
//

#import "DCTRTableViewCell.h"
#import "DCTRDoctors.h"

NSString *const DCTRDoctorsCellIdentifier = @"DCTRTableViewCell";

@interface DCTRTableViewCell()

@property (nonatomic, weak) IBOutlet UIImageView *doctorsImage;
@property (nonatomic, weak) IBOutlet UILabel *doctorsNumber;

@end

@implementation DCTRTableViewCell

-(void)setDoctor:(DCTRDoctors *)doctor {
    self.doctorsNumber.text = doctor.numberOfDoctor;
    self.doctorsImage.image = doctor.imageName;
    
}

@end
