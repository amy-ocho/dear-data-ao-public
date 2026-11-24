// global variables for scaling points with map
//variable for body blot areaaaplottinggggggg shiftCoord/location idfk
float cohoBodyStart = 330; // -- width * (325 / 1120)0.2901785714
float cohoBodyEnd = 975; // -- part of sketch that includes coho body to plot

// shift bounds
float firstShift = 1;
float lastShift = 50; // -- plotting x axis start of coho body

// coords for each object
float shiftXPos;

// PVector for mapDifficulty coords
float mapXPos; // -- mapDStartX & Y
float mapYPos; //-- mapDEnd X&Y

// min/max mapDifficulty values to scale data points to
// -- map difficulty for first line height of every object
float minMap = 1;
float maxMap = 6; // -- for first line height of every object

float mapStartX;
float mapStartY;
float mapEndX;
float mapEndY;

PVector mapCoords; // return mapX&YPos
PVector shiftCoords;


// Shift class for every freelanceData data point
class Shift
{
  float shift; // -- shift number
  float map; // -- map difficulty / 6
  float rating; // -- rotationRating
  float evp, hazard; // -- EVP & Hazard level
  int paint; // -- paintedWalls
  boolean won, king, kingWon; // -- win/loss, kingWave, kingWaveWon
  float quota, eggs; // -- quota eggs; // -- eggs collected
  boolean team; // -- new team
  int checkGame, checkApp, block; // -- checked game, checked app, blocked









  // -- plotting coords variables for data visualisation that will be used in class methods
  // -- anything used in map() needs to be a float




  // -- PVector for x and y of difficulty area
  // x point
  //float mapDStartX = 325;
  //float mapDStartY = height-75;
  //PVector mapDStart = new PVector(mapDStartX, mapDStartY);

  // -- y point
  //float mapDEndX = 780;
  //float mapDEndY = height-200;

  //PVector mapDEnd = new PVector(mapDEndX, mapDEndY);


  // -- mapping difficulty to coho body area (last two map coords)
  //float mapXPos = map(map, minDifficulty, maxDifficulty, mapDStart.x, mapDEnd.x);
  //float mapYPos = map(map, minDifficulty, maxDifficulty, mapDStart.y, mapDEnd.y);

  //PVector mapDifficultyCoords (lastt two other map coords)
  //PVector mapDCoords;

  // -- map shift to map difficulty PVector
  // -- PVector is distance between  object first/lastShift and min/Max difficulty coordss

  //float shiftMapDX = map()
  //PVector shiftMapD = new PVector(0,0);


  // -- difficulty point area (last two args on map)
  //float difficultyXPos = 325; // -- space between cohobody x and end x point
  //float difficultyEnd;
  // -- space between cohoBodyEnd and y point

  // -- PVector is distance between  object first/lastShift and min/Max difficulty coordss
  //PVector shiftCoords = new PVector(0, 0); // <-- holds objects' shift and mapDifficulty

  // -- rota rating for after map ie how hard they have to work afterrr
  //float minRating = 4.5;
  //float maxRating = 6.5;

  // -- points for each map difficulty


  // -- for eahc line(x1,y1,x2,y2)
  // -- x1 = map(shift, cohobody)
  // -- y1 = height
  // -- x2 = map(shift, potentially evp in the future?, cohoBody)
  // -- y2 = map(min/maxrotaRating, height-70)

  // -- PVector for x,y for each map



  // -- constructor to instantiate new shift and initialise its records
  Shift(float shift, float map, float rating, float evp, float hazard, int paint,
    boolean won, boolean king, boolean kingWon, float quota, float eggs, boolean team, int checkGame, int checkApp, int block)
  {
    this.shift = shift;
    this.map = map;
    this.rating = rating;

    this.evp = evp;
    this.hazard = hazard;
    this.paint = paint;

    this.won = won;
    this.king = king;
    this.kingWon = kingWon;

    this.quota = quota;
    this.eggs = eggs;

    this.team = team;
    this.checkGame = checkGame;
    this.checkApp = checkApp;
    this.block = block;

    // - shift coords
    //this.shiftXPos = shiftXPos;

    // -- Map coord stuff
    //this.mapXPos = mapXPos;
    //this.mapYPos = mapYPos;
  }


  // -- plotting shift on cohoBody
  //this.shiftCoords = new PVector(shift, map);

  // -- saving mapped coords in vector
  //this.mapDCoords = new PVector(mapXPos, mapYPos);

  // -- scaling shift to canvas w map
  // -- scaling map difficulty to canvas w map

  // -- Shift methods
  // -- drawing map line


  // -- plotting x axis base
  PVector plotShift()
  {

    // callculate coord to plottt
    float shiftXPos = map(shift, firstShift, lastShift, cohoBodyStart, cohoBodyEnd);
    shiftCoords = new PVector(shiftXPos, height-1);

    return shiftCoords;






    // variables for lowest & highest evp (x)

    // variabeles for lowest & highest difficulty (y)

    // variables for lowest & highest evp
    // scale mapDifficulty to cohoBody canvas


    // -- map shift object's difficulty to min/max dificulty within body area

    //PVector shiftPoint;
    //shiftXPos = map(s.map, minDifficulty, maxDifficulty, cohoBodyStart, cohoBodyEnd);
    //shiftYPos = height;
  }

  PVector plotMap()
  {
    // -- xPos of data point coords
    mapStartX = 315;
    mapStartY = height- 100;

    mapEndX = 920;
    mapEndY = height-200;

    mapXPos = map(map*10, minMap*10, maxMap*10, mapStartX, mapEndX);
    mapYPos = map(map*10, minMap*10, maxMap*10, mapStartY, mapEndY);

    mapCoords = new PVector(mapXPos, mapYPos);

    return mapCoords;
  }

  void draw()
  {
    //image(cohoImg,0,0);
    cohoImg.loadPixels();

    plotShift();
    plotMap();
    color c1 = cohoImg.get(int(shiftCoords.x), int(shiftCoords.y));
    // drawwww lineeeeeee
    stroke(c1);
    line(shiftCoords.x, shiftCoords.y, mapCoords.x, mapCoords.y);
  }


  // finding base coords for plotting
  // border point 1 x axis start

  // -- storeShift
  void storeShift()
  {
  }

  // -- draw position of data point with shiftCoords x and y


  // -- evp lvl, length of map difficulty,y + map difficulty
  //void drawBase(float yPos)
  //{
  //  // -- 'base' rectangle
  //  fill(255);
  //  rect(0, yPos+1, 200, 10);
  //}

  //void drawMap(float yPos)
  //{
  //  // -- mapDifficulty
  //  fill(255, 0, 0);
  //  rect(0, yPos +1, map*10, 10);
  //}

  //void drawRota(float yPos)
  //{
  //  // -- rota rating
  //  fill(0, 255, 0);
  //  rect(map*10, yPos+1, rating*10, 10);
  //}


  //void drawPaint(float yPos)
  //{
  //  // -- paintedWalls
  //  fill(0, 0, 255);
  //  rect(map*10+ rating*10, yPos+1, paint*10, 10);
  //}

  //void drawCheckG(float yPos)
  //{
  //// -- checkGame
  //fill(100, 123, 134);
  //rect(map*10 + rating * 10 + paint*10, yPos + 1, checkG*10, 10);
  //}

  //void drawCheckA(float yPos)
  //{
  //  fill(105,247,246);
  //  rect(map*10 + rating * 10 + paint*10 + checkG*10, yPos + 1, checkA*10, 10);
  //}
}
