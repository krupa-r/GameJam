final int w = 100, h = 100;
int obstacleY = 0;
float obstacleSpeed = 10;
int obstacleArrangment = (int)(Math.random()*3);
boolean isGameOver = false;
int scene;

void setup(){
  size(800,800);
  buttonX = width/2 - buttonWidth/2;
  buttonYPlayer1 = height/2 - buttonHeight - buttonSpacing/2;
  buttonYPlayer2 = height/2 + buttonSpacing/2;
}

void draw(){
  //startScreen();
  game();
  drawButton(buttonX, buttonYPlayer1, "Finish Player 1");
  drawButton(buttonX, buttonYPlayer2, "Finish Player 2");
  if(isGameOver){
  finish();
  }
}

void drawObstacles(){
  verticleEdge(false);
  verticleEdge(true);
  horizontalEdge(false);
  horizontalEdge(true);
}

void drawBackground(){
  scene = 1;
//Left Edge
  PImage leftEdgeBackground = loadImage("roadTexture_27.png");
  for(int le = h; le < height-h; le+=h){
    image(leftEdgeBackground,0,le,w,h);
  }
//Right Edge
  PImage rightEdgeBackground = loadImage("roadTexture_28.png");
  for(int re = h; re < height-h; re+=h){
    image(rightEdgeBackground,width-w,re,w,h);
  }
//Top Edge
  PImage topEdgeBackground = loadImage("roadTexture_40.png");
  for(int te = w; te < width-w; te+=w){
    image(topEdgeBackground,te,0,w,h);
  }
//Bottom Edge
  PImage bottomEdgeBackground = loadImage("roadTexture_39.png");
  for(int be = w; be < width-w; be+=w){
    image(bottomEdgeBackground,be,height-h,w,h);
  }
//Corners
  PImage tlCorner = loadImage("roadTexture_04.png");
  PImage trCorner = loadImage("roadTexture_05.png");
  PImage blCorner = loadImage("roadTexture_16.png");
  PImage brCorner = loadImage("roadTexture_17.png");
  image(tlCorner,0,0,w,h);
  image(trCorner,width-w,0,w,h);
  image(blCorner,0,height-h,w,h);
  image(brCorner,width-w,height-h,w,h);
}

void drawRoads(){
  PImage grassRoad = loadImage("./roadTexture_01.png");
  PImage sand = loadImage("roadTexture_26.png");
  PImage waterRoad = loadImage("./roadTexture_60.png");
  for(int i = 0; i < height; i+=20){
    image(grassRoad,0,0,w,h+i);
    image(sand,w,0,w,h+i);
    image(waterRoad,2*w,0,w,h+i);
  }
}

void path(){
  PImage innerblRoad = loadImage("roadTexture_47.png");
  PImage innerbrRoad = loadImage("roadTexture_48.png");
  PImage innertlRoad = loadImage("roadTexture_35.png");
  PImage innertrRoad = loadImage("roadTexture_36.png");
  image(innerblRoad,w,height-(2*h),w,h);
  image(innerbrRoad,width-(2*w),height-(2*h),w,h);
  image(innertlRoad,w,h,w,h);
  image(innertrRoad,width-(2*w),h,w,h);
//Inner right Edge
  PImage leftEdgeBackground = loadImage("roadTexture_27.png");
  for(int le = 2*h; le < height-(2*h); le+=h){
    image(leftEdgeBackground,width-w*2,le,w,h);
  }
//Inner left Edge
  PImage rightEdgeBackground = loadImage("roadTexture_28.png");
  for(int re = 2*h; re < height-h*2; re+=h){
    image(rightEdgeBackground,w,re,w,h);
  }
//Inner bottom Edge
  PImage topEdgeBackground = loadImage("roadTexture_40.png");
  for(int te = w*2; te < width-w*2; te+=w){
    image(topEdgeBackground,te,height-h*2,w,h);
  }
//Bottom Edge
  PImage bottomEdgeBackground = loadImage("roadTexture_39.png");
  for(int be = w*2; be < width-w*2; be+=w){
    image(bottomEdgeBackground,be,h,w,h);
  }
}

void centerGround(){
  PImage centerPiece1 = loadImage("roadTexture_52.png");
  PImage centerPiece2 = loadImage("roadTexture_53.png");
  PImage centerPiece3 = loadImage("roadTexture_64.png");
  PImage centerPiece4 = loadImage("roadTexture_65.png");
  image(centerPiece1,2*w,2*h,2*w,2*h);
  image(centerPiece2,4*w,2*h,2*w,2*h);
  image(centerPiece3,2*w,4*h,2*w,2*h);
  image(centerPiece4,4*w,4*h,2*w,2*h);
}

void obstacle(int x, int y, boolean isRotate){
  noStroke();
  if (!isRotate){
    fill(#FEFF03);
    rect(x,y,20,20);
    rect(x+40,y,20,20);
    fill(#33341E);
    rect(x+20,y,20,20);
  } else {
    fill(#FEFF03);
    rect(x,y,20,20);
    rect(x,y+40,20,20);
    fill(#33341E);
    rect(x,y+20,20,20);
  }
}

void verticleEdge(boolean side){
  if (!side){
    if (obstacleArrangment == 0){
      obstacle(120,250,false);
      obstacle(20,500,false);
    } else if (obstacleArrangment == 1){
      obstacle(20,250,false);
      obstacle(120,500,false);
    }
  } else {
    if (obstacleArrangment == 0){
      obstacle(720,250,false);
      obstacle(620,500,false);
    } else if (obstacleArrangment == 1){
      obstacle(620,250,false);
      obstacle(720,500,false);
    }
  }
}

void horizontalEdge(boolean side){
  if (!side){
    if (obstacleArrangment == 0){
      obstacle(250,120,true);
      obstacle(500,20,true);
    } else if (obstacleArrangment == 1){
      obstacle(250,20,true);
      obstacle(500,120,true);
    }
  } else {
    if (obstacleArrangment == 0){
      obstacle(250,720,true);
      obstacle(500,620,true);
    } else if (obstacleArrangment == 1){
      obstacle(250,620,true);
      obstacle(500,720,true);
    }
  }
}

void game(){
 drawBackground();
  centerGround();
  path();
  drawObstacles(); 
  drawPlayers();
  movePlayers();
}
