peen[] peens;
int count = 1;

float randomX() {
  return random(0, width);
}

float randomY() {
  return random(0, height);
}

void setup() {
  size(720, 720);
  
    peens = new peen[100];
  
  for (int i = 0; i < count; i++) { //length is an attribute of an array 
    peens[i] = new peen(randomX(), randomY());
  }
}

void mousePressed(){
  peens[count] = new peen(mouseX, mouseY);
  count++;
}

void draw() {
  background(255);
  for (int i = 0; i < count; i++){
    peens[i].update();
    peens[i].drawPeen();
  }
}
