//
//  Deck.h
//  Card Game
//
//  Created by Andrew Pettey on 2014/11/27.
//  Copyright (c) 2014 Andrew Pettey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
