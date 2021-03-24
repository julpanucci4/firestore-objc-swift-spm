//
//  FIRGeoPoint.m
//  
//
//  Created by Julian Panucci on 3/24/21.
//

#import "FIRGeoPoint.h"
@import Helper;


@implementation FIRGeoPoint

- (instancetype)initWithLatitude:(double)latitude longitude:(double)longitude {
  if (self = [super init]) {
	  NSLog(@"%@", latitude);
	  
	  HelloWorld* hw = [[HelloWorld alloc] init];
	  
	  
	  NSLog(@"%@", hw.foo);
  }
  return self;
}

@end
