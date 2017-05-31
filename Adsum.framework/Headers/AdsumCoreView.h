//
//  AdsumCoreNativeAPI.h
//  AdsumCoreNativeAPI
//
//  Created by adactive on 17/01/14.
//  Copyright (c) 2014 adactive. All rights reserved.
//

#ifndef adactive_AdsumCoreView_h
#define adactive_AdsumCoreView_h

#import <UIKit/UIKit.h>

@class ADSDataManager;
@class ADSPosition;
@class ADSGpsPosition;
@class ADSPlace;
@protocol ADSMapDelegate;
@class ADSPoi;
@class ADSPicto;

@interface AdsumCoreView : UIView
{
    
}

- (id)initWithFrame:(CGRect)rect ADSDataManager:(ADSDataManager *)dataManager;

- (void)setupView;

- (void)resetCamera;

- (void)setMapBackgroundColor:(UIColor *)backgroundColor;

- (void)releaseView;

- (void)start;

- (void)startDrawingTimer;

- (void)addADSPictoToMap:(ADSPicto *)picto
              atPosition:(ADSPosition *)position
                 onFloor:(NSNumber *)floorId;

- (void)removeADSPictoFromMap:(ADSPicto *)picto;


- (void)setCurrentFloor:(NSNumber*)floorId;

- (void)setSiteView;

- (NSArray*)getFloorsWithBuilding:(NSNumber*)buildingId;

- (NSArray*)getBuildings;

- (void)centerOnPlace:(ADSPlace *)place;

- (void)centerOnPlace:(ADSPlace *)place withZoom:(NSNumber *)zoomLevel;

- (void)centerOnPosition:(ADSPosition*)placeId;

- (void)centerOnPosition:(ADSPosition *)position withZoom:(NSNumber *)zoomLevel;

- (ADSPosition*)ADSGpsToADSPosition:(ADSGpsPosition*)gps;

- (ADSGpsPosition *)ADSPositionToADSGpsPosition:(ADSPosition *)position;

- (void)addADSMapDelegate:(id<ADSMapDelegate>)delegate;

- (bool)drawPathFromADSPlace:(ADSPlace *)start toADSPlace:(ADSPlace *)destination forPrm:(BOOL)prm;
- (bool)drawPathFromADSPosition:(ADSPosition*) startPosition andFloor:(NSNumber *)startFloorId toADSPositon:(ADSPosition *) destinationPosition andFloor:(NSNumber *)destinationFloorId forPrm:(BOOL)prm;

- (void)removePath;

- (void)removeADSMapDelegate:(id <ADSMapDelegate>)delegate;

- (void)hightlightADSPlace:(ADSPlace *)place
                 withColor:(UIColor *)color
                 andBounce:(NSNumber *)bounce;

- (void)unlightADSPlace:(ADSPlace *)place;

@property(atomic) bool CanRender;

@end


#endif
