int score1 = 0; int score2 = 0; 
int buttonWidth = 100;
int buttonHeight = 50;
int buttonX, buttonY;

void updateScore() {
  if(x1 == 0) { 
  score1++;
  isGameOver = true;
  } else if(x2 == 0) { 
  score2++;
  isGameOver = true;
  }
}

void mousePressed() {
  
  if (mouseX > buttonX && mouseX < buttonX + buttonWidth && mouseY > buttonY && mouseY < buttonY + buttonHeight) {
    isGameOver = true;
  }
}
  
  
