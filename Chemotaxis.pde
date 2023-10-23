class Walker {
  int myX, myY;

  Walker() {
    myX = myY = 250;
  }

  void walk() {
    myX = myX + (int)(Math.random() * 7) - 3;
    myY = myY + (int)(Math.random() * 7) - 3;
  }

  void show() {
    ellipse(myX, myY, 30, 30);
  }
}

class Bacteria {
  Walker walker;
  color bacteriaColor;

  Bacteria() {
    walker = new Walker();
    bacteriaColor = color(random(255), random(255), random(255));
  }

  void move() {
    walker.walk();
  }

  void show() {
    fill(bacteriaColor);
    walker.show();
  }
}

Bacteria[] bacteriaArray;
int numBacteria = 100;

void setup() {
  size(400, 400);
  bacteriaArray = new Bacteria[numBacteria];

  for (int i = 0; i < numBacteria; i++) {
    bacteriaArray[i] = new Bacteria();
  }
}

void draw() {
  background(255);

  for (int i = 0; i < numBacteria; i++) {
    bacteriaArray[i].move();
    bacteriaArray[i].show();
  }
}
