// simple drawing Year 2


float r = 0;
float g = 0;
float b = 0;


float x = 0;
float y = 0;
float spacing = 50;

void setup() {
  size(800, 800);
  background(229, 29, 29);
}


void draw() {

  stroke(0);
  strokeWeight(3);

  //rule one - probability 3 choices
  if (random(1) < 0.6 ) {
    noFill();
    rect (x, y, spacing, spacing);
  } 
  else if (random(1) >0.0 && random(1)  < 0.4){
   line(x,y, x+spacing,y+spacing);
  }
   else {
    // no outline, solid fill, triangle
    noStroke();
    fill(0);
    triangle (x, y, x+ spacing, y, x, y+ spacing);
  }

  //rule two - increase spacing
  x+=spacing;

  //rule three - move down a row
  if (x > width) {
    y += spacing;
    x = 0;
  }
}

void keyPressed() {
  saveFrame("simple10print-###.jpg");
}