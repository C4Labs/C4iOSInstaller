//
// C4Workspace.h
// Examples
//
// Created by Greg Debicki
//

#import "C4WorkSpace.h"

@implementation C4WorkSpace
{
    C4Movie * movie;
    C4Shape * shape;
}

-(void)setup
{
    movie = [C4Movie movieNamed:@"inception.mov"];
    
    [movie setWidth:self.canvas.width];
    [movie setCenter:self.canvas.center];
    
    [self.canvas addMovie:movie];
    
    [movie setShadowOffset:CGSizeMake(-5, 5)];
    [movie setShadowOpacity:0.8];
    [movie setShadowColor:[UIColor purpleColor]];
    
    shape = [C4Shape rect:CGRectMake(0, 0, 100, 100)];
    
    [shape setShadowOffset:CGSizeMake(-5, 5)];
    [shape setShadowOpacity:0.8];
    [shape setShadowColor:[UIColor purpleColor]];
    
    [shape setAnimationDuration:1.0];
    [movie setAnimationDuration:1.0];
    [self.canvas addSubview:shape];
}

- (void) touchesBegan
{
    [movie play];
    [shape setShadowColor:[UIColor clearColor]];
    [movie setShadowColor:[UIColor clearColor]];
    
}


- (void) touchesEnded
{
    shape.animationDuration = 0.5f;
    movie.animationDuration = 0.5f;
    [movie pause];
    [shape setShadowColor:[UIColor purpleColor]];
    [movie setShadowColor:[UIColor purpleColor]];
}
@end