// Shift class for every freelanceData data point
class Shift
{
  String shift; // -- shift number
  int map; // -- map difficulty / 6
  float rating; // -- rotationRating
  float evp, hazard; // -- EVP & Hazard level

  int paint; // -- paintedWalls
  boolean won, king, kingWon; // -- win/loss, kingWave, kingWaveWon

  float quota, eggs; // -- quota eggs; // -- eggs collected

  boolean team; // -- new team
  int checkGame, checkApp, block; // -- checked game, checked app, blocked

  PVector shiftCoords = new PVector(0, 0); // <-- holds upper/lower bounds of EVP & HazardLevel / where to draw
  

  // -- constructor to instantiate new shift and initialise its records
  Shift(String shift, int map, float rating, float evp, float hazard, int paint,
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
  }

  // -- Shift methods
  
  // -- plotting x axis base
  void plotShift()
  {
    // variables for lowest & highest evp (x)
    
    // variabeles for lowest & highest difficulty (y)
    float minDifficulty = 1;
    float maxDifficulty = 6;
    
    // variables for lowest & highest evp 
    // scale mapDifficulty to cohoBody canvas
     
    
    
    float cohoBodyStart = 325;
    float cohoBodyEnd = 980;
    
    // -- map shift object's difficulty to min/max dificulty within body area
    
    //PVector shiftPoint;
    //shiftXPos = map(s.map, minDifficulty, maxDifficulty, cohoBodyStart, cohoBodyEnd);
    //shiftYPos = height;
  }
  
  void draw()
  { 
    stroke(255);
    //line(shiftXPos, shiftYPos, height-s.rating);
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
