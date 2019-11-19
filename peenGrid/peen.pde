class peen {

  float x;
  float y;

  float headRad;
  float dickLength;
  float randomBall;
  float ballOffX;
  float ballOffY;

  float speedX;
  float speedY;

  float rotation;
  float rotationSpeed;

  float rHead;
  float gHead;
  float bHead;

  float rPeen;
  float gPeen;
  float bPeen;

  float X;
  float Y;

  peen(float _x, float _y) {

    x = _x;
    y = _y;

    X = 0;
    Y = 0;

    //headRad = random(20, 45);
    headRad = random(50, 100);
    dickLength = X + random(50, 150);
    randomBall = random(-5, 30);
    ballOffX = headRad/2;
    ballOffY = headRad/8;

    speedX = random(2, 4);
    speedY = random(2, 4);

    rotation = random(TWO_PI);
    rotationSpeed = 0.015*random(PI);

    rHead = random(125, 255);
    gHead = random(87, 212);
    bHead = random(46, 168);

    rPeen = random(125, 255);
    gPeen = random(87, 212);
    bPeen = random(46, 168);
  }

  void update() {

    x += speedX;
    y += speedY;

    //right
    if (x> width - headRad) {
      x = width - headRad;
      speedX *= -1;
    }
    //left
    if (x < headRad) {
      x = headRad;
      speedX *= -1;
    }
    //bottom
    if (y > height - headRad) {
      y = height - headRad;
      speedY *= -1;
    }
    //top
    if (y < 0 + headRad) {
      y = 0 + headRad;
      speedY *= -1;
    }
    rotation += rotationSpeed;
  }

  void drawPeen() {
    noStroke();
    fill(rPeen, gPeen, bPeen);
    pushMatrix();
    translate(x+50, y+50);
    rotate(rotation);
    rectMode(CORNERS);
    rect(X, Y-headRad/2, dickLength+headRad/1.1, Y+headRad/2);
    //strokeWeight(4.5);
    strokeWeight(6);
    stroke(0);
    //shaft
    line(X, Y-headRad/2, dickLength, Y-headRad/2);
    line(X, Y+headRad/2, dickLength, Y+headRad/2);
    //balls
    arc(dickLength+ballOffX, Y-headRad/2+ballOffY, headRad + randomBall, headRad + randomBall, PI+QUARTER_PI/3, TWO_PI+QUARTER_PI);
    arc(dickLength+ballOffX, Y+headRad/2-ballOffY, headRad + randomBall, headRad + randomBall, 0-QUARTER_PI, PI-QUARTER_PI/3);
    //head
    fill(rHead, gHead, bHead);
    arc(X, Y, headRad, headRad, HALF_PI, PI+HALF_PI, CHORD);
    //pHole
    line(X-headRad/2, Y, X-headRad/4, Y);
    popMatrix();
  }
}
