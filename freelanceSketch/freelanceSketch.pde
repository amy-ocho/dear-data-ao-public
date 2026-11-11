// -- freelanceData map sketch //<>// //<>//
// -- holds freelanceData file
String[] freelanceShiftRows; // -- array to hold

// -- holds ShiftClass objects
ArrayList<Shift> shifts = new ArrayList<Shift>();

// -- holds upper/lower bounds for evp/hazard level
float lowEVP = 400;
float highEVP = 640;

float lowHazard = 223;
float highHazard = 300;


void setup()
{
  size (800, 450);
  background(0);
  
  // -- coho range from imgB[0]
  loadThreshCoho(); // -- load image
  findBrightness(); // -- find pixel brightness
  drawBody(); // -- draw points on body



  // -- read freelanceData row to create onject
  int dataRow = 0;

  freelanceShiftRows = loadStrings("freelanceData.csv"); // -- loads freelanceData from file

  // -- creating objects for Shift class from each data row
  for (String shiftRow : freelanceShiftRows) {
    if (dataRow > 0) { // -- ignores header
      // -- store shift method goes

      // -- split row at comma and store output in stats
      String[] stats = split(shiftRow, ",");

      // -- TODO: make method?
      // take data from shiftRow for object variables
      String shiftNum = stats[0];
      int mapDifficulty = int(stats[1]);
      float evpLevel = float(stats[3]);
      float hazardLevel = float(stats[4]);

      // use collected stats data to create new object for Shift class
      Shift s = new Shift(shiftNum, mapDifficulty, evpLevel, hazardLevel);

      // -- calculate where to place powerEgg (data point)
      float x = map(evpLevel, lowEVP, highEVP, 20, width-20);
      float y = map(hazardLevel, lowHazard, highHazard, 20, height-20);

      // -- store shiftRow coords in object shiftCoords pvector
      s.shiftCoords = new PVector(x, y);

      // -- add shiftRow to shifts ArrayList
      shifts.add(s);
    }
    // -- move onto next row
    dataRow++;
  }
}


void draw()
{
  

  // -- loop through each shift object in its array
  //for (Shift s : shifts) {
  //  s.draw();
}
