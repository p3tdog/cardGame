//
//  Card.m
//  Card Game
//
//  Created by Andrew Pettey on 2014/11/27.
//  Copyright (c) 2014 Andrew Pettey. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card
@synthesize contents = _contents;
@synthesize chosen;
@synthesize matched;

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards)
    {
        if([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }
    return score;
}
@end
