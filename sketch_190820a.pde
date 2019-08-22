int xBallSize=20, yBallSize=20, xRectSize=500, yRectSize=500, xBall=0, yBall=0, xRect=0, yRect=0;
int xspeed=2, yspeed=2;

void setup() {
  size(500, 500);
  frameRate(60);
  background(0, 0, 0);
  xBall=500/2;
  yBall=500/2;
}

void draw() {
  background(255, 255, 255);
  stroke(0, 0, 0);
  xRectSize--;
  yRectSize--;
  noFill();
  rect(xRect, yRect, xRectSize, yRectSize);
  fill(255, 255, 255);
  ellipse(xBall, yBall, xBallSize, yBallSize);
  xBall=xBall+xspeed;
  yBall=yBall+yspeed;
  if (xBall>xRectSize||xBall<0) {
    xspeed*=-1;
  }
  if(xBall>xRectSize)xBall=xRectSize-10;
  
  if (yBall>yRectSize||yBall<0) {
    yspeed*=-1;
  }
    if(yBall>yRectSize)yBall=yRectSize-10;

}
