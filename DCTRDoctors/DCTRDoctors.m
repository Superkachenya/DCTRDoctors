
//This class rewrite super method init

#import "DCTRDoctors.h"

@implementation DCTRDoctors

//implementation of new method
-(id)initWithImageName:(UIImage *)imageName numberOfDoctor:(NSString *)numberOfDoctor
{
    self = [super init];
    
    //if self exist
    if (self) {
        
        //assign new properties
        _imageName = imageName;
        _numberOfDoctor = numberOfDoctor;
    }
    return self;
}



@end
