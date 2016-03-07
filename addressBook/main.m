//
//  main.m
//  addressBook
//
//  Created by 郑啸宇 on 15/5/19.
//  Copyright (c) 2015年 冰弦鸾笙. All rights reserved.
//
#import <Foundation/Foundation.h>
@interface AddressCard: NSObject
@property (copy, nonatomic) NSString *firstname,*lastname, *email,*address,*phone;
-(void) print;
@end
@implementation AddressCard @synthesize firstname, lastname,email,address,phone;
-(void) print {
    NSLog (@"====================================");
    NSLog (@"|                                  |");
    NSLog (@"| %-1s %-27s|", [firstname UTF8String],[lastname UTF8String] );
    NSLog (@"| %-32s |", [email UTF8String]);
    NSLog (@"| %-31s |", [address UTF8String]);
    NSLog (@"| %-32s |", [phone UTF8String]);
    NSLog (@"|                                  |");
    NSLog (@"|     o                  o         |");
    NSLog (@"====================================");
}

-(void) setFirstName: (NSString *) theFirstName andLastName:(NSString*)theLastName andEmail: (NSString *) theEmail andAddress:(NSString*) theAddress andPhone:(NSString*)phoneNum
{
    self.firstname= theFirstName;
    self.lastname =theLastName;
    self.email = theEmail;
    self.address =theAddress;
    self.phone =phoneNum;
}
-(NSString*)getFirstName{
    return self.firstname;

}
-(NSString*)getLastName{
    return self.lastname;
}
-(NSString*)getEmail{
    return self.email;
}
-(NSString*)getAddress{
    return self.address;
}
-(NSString*)getPhone{
    return self.phone;
}
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* firstName = @"zheng";
        NSString* lastName = @"xiaoyu";
        NSString* eamil = @"12345@qq.com";
        NSString* address = @"luoyu load ,wuhan,hubei province";
        NSString* phone = @"123999888";
        AddressCard* myaddresscard = [[AddressCard alloc]init];
        [myaddresscard setFirstName:firstName andLastName:lastName andEmail:eamil andAddress:address andPhone:phone];
        [myaddresscard print];
        // insert code here...
    }
    return 0;
}
