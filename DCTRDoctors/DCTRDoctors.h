
//This class rewrite super method init an give it special properties

#import <UIKit/UIKit.h>

@interface DCTRDoctors : NSObject

//Creating properties
@property (nonatomic, strong) UIImage *imageName;
@property (nonatomic, strong) NSString *numberOfDoctor;

//initializing method
-(id)initWithImageName:(UIImage *)imageName
        numberOfDoctor:(NSString *)numberOfDoctor;

@end
