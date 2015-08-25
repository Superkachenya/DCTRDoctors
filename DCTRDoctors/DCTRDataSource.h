//This class conteins Images

#import <Foundation/Foundation.h>
@class DCTRDoctors;

@interface DCTRDataSource : NSObject


+ (DCTRDataSource *) objectWithSetOfDoctors;
- (DCTRDoctors *) doctorAtIndex: (NSInteger) index;
-(NSInteger) doctorsCount;
@end
