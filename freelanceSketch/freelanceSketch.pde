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
      float rotationRating = float(stats[2]);
      
      float evpLevel = float(stats[3]);
      float hazardLevel = float(stats[4]);
      int paintedWalls = int(stats[5]);
      
      boolean won = boolean(stats[6]);
      boolean kingWave =  boolean(stats[7]);
      boolean kingWaveWon = boolean(stats[8]);
      
      float quota = float(stats[9]);
      float eggsCollected = float(stats[10]);
      
      boolean newTeam = boolean(stats[11]);
      int checkedGame = int(stats[12]);
      int checkedApp = int(stats[13]);
      int blocked = int(stats[14]);
      
      

      // use collected stats data to create new object for Shift class
      Shift s = new Shift(shiftNum, mapDifficulty, rotationRating, evpLevel, hazardLevel, paintedWalls, won, 
      kingWave, kingWaveWon, quota, eggsCollected, newTeam, checkedGame, checkedApp, blocked);

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
  //background(0);
  float count = 0;
  

  // -- loop through each shift object in its array
  for (Shift s : shifts) 
  {
    s.drawBase(count);
    s.drawMap(count);
    s.drawRota(count);
    s.drawPaint(count);
    s.drawCheckG(count);
    count= count + 10;
  }
}
