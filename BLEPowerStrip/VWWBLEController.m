//
//  VWWBLEController.m
//  BLEPowerStrip
//
//  Created by Zakk Hoyt on 9/29/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import "VWWBLEController.h"
#import "BLE.h"

@interface VWWBLEController () <BLEDelegate>
@property (strong, nonatomic) BLE *ble;
@end



@implementation VWWBLEController

#pragma mark Overridden methods
-(id)init{
    self = [super init];
    if(self){
        _ble = [[BLE alloc]init];
        [_ble controlSetup:1];
        _ble.delegate = self;
    }
    return self;
}





#pragma mark Private methods



#pragma mark Public methods


#pragma mark BLEDelegate (Optional)

-(void) bleDidConnect{
    NSLog(@"%s", __func__);
}
-(void) bleDidDisconnect{
    NSLog(@"%s", __func__);
}
-(void) bleDidUpdateRSSI:(NSNumber *) rssi{
    NSLog(@"%s rssi: %@", __func__, rssi);
}
-(void) bleDidReceiveData:(unsigned char *) data length:(int) length{
    NSLog(@"%s", __func__);
}

@end
