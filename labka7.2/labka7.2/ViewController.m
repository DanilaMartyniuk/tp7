//
//  ViewController.m
//  labka7.2
//
//  Created by Denis Borychev on 6.05.23.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property NSDictionary* cityToCountry;
@property (weak, nonatomic) IBOutlet UITextField *inputF;
@property (weak, nonatomic) IBOutlet UIImageView *Landmark;
@property NSDictionary* cityToTemp;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cityToTemp =@{
        @"barcelona":@"25",
        @"naples":@"10",
        @"rome":@"15",
        @"madrid":@"20"
    };
    self.cityToCountry =@{
    @"rome":@"Italy",
    @"naples":@"Italy",
    @"barcelona":@"Spain",
    @"madrid":@"Spain"
    };
    [[self label] setText:@"Hi!"];
}
- (IBAction)but:(id)sender {
    NSString *city = _inputF.text.lowercaseString;
    if(_cityToTemp[city])
    {
        _label.text = [NSString stringWithFormat:@"%@ C %@",_cityToTemp[city],_cityToCountry[city]];
        if([[_cityToTemp objectForKey:city]integerValue] <= 10) {
            [[self label] setTextColor:UIColor.greenColor];
        }
        else if ([[_cityToTemp objectForKey:city]integerValue] <= 20){
            [[self label] setTextColor:UIColor.orangeColor];
        }
        else{
            [[self label] setTextColor:UIColor.redColor];
        }
        [[self Landmark] setImage:[UIImage imageNamed:city]];
    }
    else
    {
        [[self label] setText:@"no info"];
        [[self label] setTextColor:UIColor.blackColor];
        [[self Landmark] setHidden:true];

    }
}
@end
