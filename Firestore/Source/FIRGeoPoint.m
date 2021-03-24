//
//  FIRGeoPoint.m
//  
//
//  Created by Julian Panucci on 3/24/21.
//

#import "FIRGeoPoint.h"

@implementation FIRGeoPoint

- (instancetype)initWithLatitude:(double)latitude longitude:(double)longitude {
  if (self = [super init]) {
	  NSLog(@"words :: %@", latitude);
	  
  }
  return self;
}

@end
