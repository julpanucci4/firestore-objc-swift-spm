//
//  MyClass.h
//  
//
//  Created by Julian Panucci on 3/24/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
NS_SWIFT_NAME(GeoPoint)
@interface FIRGeoPoint : NSObject <NSCopying>

/** :nodoc: */
- (instancetype)init NS_UNAVAILABLE;

/**
 * Creates a `GeoPoint` from the provided latitude and longitude degrees.
 * @param latitude The latitude as number between -90 and 90.
 * @param longitude The longitude as number between -180 and 180.
 */
- (instancetype)initWithLatitude:(double)latitude
					   longitude:(double)longitude NS_DESIGNATED_INITIALIZER;

/**
 * The point's latitude. Must be a value between -90 and 90 (inclusive).
 */
@property(nonatomic, readonly) double latitude;

/**
 * The point's longitude. Must be a value between -180 and 180 (inclusive).
 */
@property(nonatomic, readonly) double longitude;

@end
NS_ASSUME_NONNULL_END
