int score1 = 0; int score2 = 0; 

void updateScore() {
  if(x1 == 0) { 
  score1++;
  isGameOver = true;
  } else if(x2 == 0) { 
  score2++;
  isGameOver = true;
  }
}
