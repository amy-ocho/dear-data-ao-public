// -- cohozuna  image
PImage cohoImg;

float[][] imgB; // -- 2d array to store pixel colour brightness of sketch for detecting cohobody
int spacer;

// -- is pixel body
boolean isBody = false;

// loading coho image
PImage loadThreshCoho() {
  cohoImg = loadImage("cohozuna.jpg");
  image(cohoImg, 0, 0);
  filter(THRESHOLD, 0.35); // -- filters body as black an background as white

  return cohoImg;
}

// -- checking each pixels brightness and returning as an array
float[][] findBrightness()
{
  imgB = new float[width][height]; // <-- storing width*height number of items

  // -- storing img pixel brightness level for entire sketch
  for (int row = 0; row < width; row++) {
    for (int col = 0; col < height; col++) {
      color c = cohoImg.get(row, col);
      imgB[row][col] = brightness(c);
    }
  }
  return imgB;
}

// -- check if pixel is coho body
boolean checkIsBody(int r, int c)
{
  // -- drawing circle if pixel is white
  if (imgB[r][c] < 90) {
    isBody = true;
    color cc = cohoImg.get(r, c);
    fill(cc);
    circle(r, c, 10);
  }
  return isBody;
}

// -- draw circles (data points) on coho body
void drawBody()
{
  spacer = 10;
  image(cohoImg, 0, 0);

  for (int row = 0; row < width; row = row + spacer) {
    for (int col = 0; col < height; col = col + spacer) {
      checkIsBody(row, col);
    }
  }
}
