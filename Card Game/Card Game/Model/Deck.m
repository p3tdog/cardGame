//
//  Deck.m
//  Card Game
//
//  Created by Andrew Pettey on 2014/11/27.
//  Copyright (c) 2014 Andrew Pettey. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong,nonatomic) NSMutableArray *cards; // Cards
@end

@implementation Deck
@synthesize cards = _cards;

- (NSArray *)cards{
    if(!_cards)
    {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL) atTop
{
    if(atTop)
    {
        [self.cards insertObject:card atIndex:0];
    }
    else{
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    unsigned index = arc4random() % [self.cards count];
    randomCard = self.cards[index];
    [self.cards removeObjectAtIndex:index];
    return randomCard;
}
@end
