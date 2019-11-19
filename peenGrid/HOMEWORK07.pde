void setup() {
  size(720, 720);
  noLoop();
}

void draw() {
  background(random(43,163), random(94,218), random(128,255));
  //background(random(255), random(255), random(255));
  //background(255);

  float grid = 70;
  for (float x = 0; x < width; x += grid) {
    for (float y = 0; y < height; y += grid) {
      drawPeen(x, y, random(17, 32));
      rotate(PI);
    }
  }
}

void drawPeen(float x, float y, float headRad) {
  float dickLength = x + random(15, 70);
  float randomBall = random(-2, 20);
  float ballOffX = headRad/2;
  float ballOffY = headRad/8;

  noStroke();
  fill(random(125,255), random(87,212), random(46,168));
  rectMode(CORNERS);
  rect(x, y-headRad/2, dickLength+headRad/1.1, y+headRad/2);
  strokeWeight(3.5);
  stroke(0);
  //shaft
  line(x, y-headRad/2, dickLength, y-headRad/2);
  line(x, y+headRad/2, dickLength, y+headRad/2);
  //balls
  arc(dickLength+ballOffX, y-headRad/2+ballOffY, headRad + randomBall, headRad + randomBall, PI+QUARTER_PI/3, TWO_PI+QUARTER_PI);
  arc(dickLength+ballOffX, y+headRad/2-ballOffY, headRad + randomBall, headRad + randomBall, 0-QUARTER_PI, PI-QUARTER_PI/3);
  //head
  fill(random(125,255), random(87,212), random(46,168));
  arc(x, y, headRad, headRad, HALF_PI, PI+HALF_PI, CHORD);
  //pHole
  line(x-headRad/2, y, x-headRad/4, y);
}
