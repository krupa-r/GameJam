float x1 = 0, y1 = 0, speedX1 = 0, speedY1 = 0, x2 = 0, y2 = 90, speedX2 = 0, speedY2 = 0; 
final int SPEED = 9;
//controls

//Within game loop

void movePlayers(){
  x1 += speedX1;
  y1 += speedY1;
  x2 += speedX2;
  y2 += speedY2;
}

void drawPlayers(){
  x1 = constrain(x1, 0, 650);
  x2 = constrain(x2, 0, 650);
  y1 = constrain(y1, 0, 650);
  y2 = constrain(y2, 0, 650);
  PImage p1 = loadImage("female_idle.png"); 
  PImage p2 = loadImage("player_idle.png"); 
  image(p1,x1,y1);
  image(p2,x2,y2);
}

//Independant of game loop controls

void keyPressed() {
  //ToMovePlayer1
  if (keyCode == RIGHT)
    speedX1 = SPEED;
  else if (keyCode == LEFT)
    speedX1 = -SPEED;
  else if (keyCode == UP)
    speedY1 = -SPEED;
  else if (keyCode == DOWN)
    speedY1 = +SPEED;
  //ToMovePlayer2
  else if (key == 'D' || key =='d')
    speedX2 = SPEED;
  else if (key == 'A' || key =='a')
    speedX2 = -SPEED;
  else if (key == 'W' || key =='w')
    speedY2 = SPEED;
  else if (key == 'S' || key =='s')
    speedY2 = -SPEED;
  }

void keyReleased() {
  //Player1
  if (keyCode == RIGHT || keyCode == LEFT)
    speedX1 = 0;
  else if (keyCode == UP || keyCode == DOWN)
    speedY1 = 0;
  //Player2
  if (key == 'D' || key =='d' || key == 'A' || key =='a')
    speedX2 = 0;
  else if (key == 'W' || key =='w' || key == 'S' || key =='s')
    speedY2 = 0;
}
