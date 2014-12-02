//
//  Card.h
//  Card Game
//
//  Created by Andrew Pettey on 2014/11/27.
//  Copyright (c) 2014 Andrew Pettey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;
- (int)match:(NSArray *)otherCards;
@end