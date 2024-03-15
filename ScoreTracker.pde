int score1 = 0; int score2 = 0; int boundary = 0; //change boundary later

void updateScore() {
  if(x1 == boundary || (x1 % boundary == 0 && speedX1 > 0)) { //change boundary here later
  score1++;
  } else if(x2 == boundary || (x2 % boundary == 0 && speedX2 > 0)) { /*speed is checked here cuz 
                                                                   if the player stops and stays on the boundry then score increments*/
  score2++;
  }
}
