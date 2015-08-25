
#import "DCTRTableViewController.h"
#import "DCTRDoctors.h"
#import "DCTRTableViewCell.h"
#import "DCTRDataSource.h"

@interface DCTRTableViewController () <UITableViewDataSource>

@property (nonatomic, strong) DCTRDataSource *allDoctors;

@end

@implementation DCTRTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.allDoctors = [DCTRDataSource objectWithSetOfDoctors];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
return [self.allDoctors doctorsCount];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DCTRTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:DCTRDoctorsCellIdentifier forIndexPath:indexPath];
    
    [cell setDoctor:[self.allDoctors doctorAtIndex:indexPath.row]];
    
    return cell;
}
@end
