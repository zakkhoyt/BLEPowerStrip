//
//  VWWPowerStripTableViewCell.h
//  BLEPowerStrip
//
//  Created by Zakk Hoyt on 9/29/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VWWPowerStripTableViewCell;

@protocol VWWPowerStripTableViewCellDelegate <NSObject>
-(void)powerStripTableViewCell:(VWWPowerStripTableViewCell*)sender switchChangedState:(BOOL)on;
@end

@interface VWWPowerStripTableViewCell : UITableViewCell
@property (nonatomic, weak) id <VWWPowerStripTableViewCellDelegate> delegate;

@property (nonatomic, strong) NSMutableDictionary *outlet;
@end
