
//Class creates an Array with doctors

#import "DCTRDataSource.h"
#import "DCTRDoctors.h"

@interface DCTRDataSource ()

@property (nonatomic, strong) NSMutableArray* doctorsArray;

@end

@implementation DCTRDataSource

+(DCTRDataSource *) objectWithSetOfDoctors {
    
    NSArray *doctorsImages = [NSArray arrayWithObjects:@"01firstDoctor", @"02secondDoctor", @"03thirdDoctor", @"04fourthDoctor", @"05fifthDoctor", @"06sixthDoctor", @"07seventhDoctor", @"08eigthDoctor", @"013warDoctor", @"09ninthDoctor", @"010tenthDoctor", @"011eleventhDoctor", @"012twelfthDoctor", nil];
    
    NSArray *doctorsNumbers = [NSArray arrayWithObjects:@"First Doctor", @"Second Doctor", @"Third Doctor", @"Fourth Doctor", @"Fifth Doctor", @"Sixth Doctor", @"Seventh Doctor", @"Eigth Doctor", @"War Doctor", @"Ninth Doctor", @"Tenth Doctor", @"Eleventh Doctor", @"Twelfth Doctor", nil];
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    for (int i = 0; i <[doctorsImages count]; i++) {
        DCTRDoctors *newDoctor = [[DCTRDoctors alloc]initWithImageName:[UIImage imageNamed:[doctorsImages objectAtIndex: i]]
                                                        numberOfDoctor:[doctorsNumbers objectAtIndex:i]];
        [tempArray addObject:newDoctor];
    }
    DCTRDataSource *allDoctors = [[DCTRDataSource alloc] init];
    allDoctors. doctorsArray = tempArray;
    
    return allDoctors;
}

-(DCTRDoctors *) doctorAtIndex:(NSInteger)index {
    if (index < 0 || index >= [self.doctorsArray count]) {
        return nil;
    }
    return [self.doctorsArray objectAtIndex:index];
}

-(NSInteger) doctorsCount {
    return [self.doctorsArray count];
}

@end

