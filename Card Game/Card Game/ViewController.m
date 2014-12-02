//
//  ViewController.m
//  Card Game
//
//  Created by Andrew Pettey on 2014/11/27.
//  Copyright (c) 2014 Andrew Pettey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) NSUInteger flipCount;
@end

@implementation ViewController
- (void) setFlipCount:(NSUInteger) flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %lu",self.flipCount];
}
- (IBAction)touchCardButton:(UIButton *)sender {
    self.flipCount++;
    if(![sender.currentTitle length])
    {
        UIImage *cardImage = [UIImage imageNamed:@"cardfront"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"A" forState:UIControlStateNormal];
    }
    else
    {
        UIImage *cardImage = [UIImage imageNamed:@"cardback"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
}


@end
