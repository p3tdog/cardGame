//
//  PlayingCard.h
//  Card Game
//
//  Created by Andrew Pettey on 2014/11/28.
//  Copyright (c) 2014 Andrew Pettey. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSArray *)rankStrings;
+ (NSUInteger)maxRank;
@end
