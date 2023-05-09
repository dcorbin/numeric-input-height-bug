//
//  PGLNumericInputMananger.m
//  NumericInput
//
//  Created by DAVID CORBIN on 5/9/23.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

#import <React/RCTViewManager.h>

@interface PGLNumericInputManager : RCTViewManager
@end

@implementation PGLNumericInputManager

RCT_EXPORT_MODULE(PGLNumericInput)

- (UIView *)view
{
  UITextField *field = [[UITextField alloc] init];
  UIColor *red = [UIColor colorWithRed:1 green:0.4 blue:0.4 alpha:1];
  [field setBackgroundColor:red];
  return field;
}

@end
