// -- drawing power egg method

// -- power egg colour global variables
color outerWhite = color(255, 255, 255);
color outerYellow = color(255, 214, 5);
color innerOrange = color(255, 125, 3);

// -- draw the gradient (5 circles) between outerWhite and outerYellow TODO: applicable to all egg colour sections
void drawEggGradient(float x, float y, float radius) // <-- width/height / 2
{
  float g = 255; // -- outerWhite g & b values
  float b = 255;
  
  float gIncrement = 8.2; // -- difference between outerWhite and outerYellow g&b values divided by 10
  float bIncrement = 50;

  // iterating 5 circles
  for (int i = 1; i <= 5; i++) {
    // -- calculate gradient g, b, and radius values
    g -= gIncrement;
    b -= bIncrement;
    radius -= i; // <-- outer white radius
    
    fill(255, g, b); // drawing gradient circle
    circle(x, y, radius); // < -- smaller circles till og radius of outerYellow 190
  }
}

void powerEgg(float x, float y, float r) {
  ellipseMode(CENTER);
  noStroke();
  // -- white circle
  fill(outerWhite);
  circle(x, y, r +20);
  drawEggGradient(x, y, r+20);
  // -- orange inner
  fill(innerOrange);
  circle(x, y, r+5);
}
