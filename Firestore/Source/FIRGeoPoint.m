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
	if (latitude < -90 || latitude > 90 || !isfinite(latitude)) {
	  ThrowInvalidArgument("GeoPoint requires a latitude value in the range of [-90, 90], "
						   "but was %s",
						   latitude);
	}
	if (longitude < -180 || longitude > 180 || !isfinite(longitude)) {
	  ThrowInvalidArgument("GeoPoint requires a longitude value in the range of [-180, 180], "
						   "but was %s",
						   longitude);
	}

	_latitude = latitude;
	_longitude = longitude;
  }
  return self;
}
