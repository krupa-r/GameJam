int score1 = 0; int score2 = 0; int boundary = 0; //change boundary later

void updateScore() {
  if(x1 % boundary == 0) { //change boundary here later
  score1++;
  } else if(x2 % boundary == 0) { 
  score2++;
  }
}