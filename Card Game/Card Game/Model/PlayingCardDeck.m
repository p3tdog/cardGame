//
//  PlayingCardDeck.m
//  Card Game
//
//  Created by Andrew Pettey on 2014/12/01.
//  Copyright (c) 2014 Andrew Pettey. All rights reserved.
//

#import "PlayingCardDeck.h"

@implementation PlayingCardDeck

- (instancetype) init
{
    self = [super init];
    if(self)
    {
        for (NSString *suit in [PlayingCard validSuits])
        {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++)
            {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}
@end
