int score1 = 0; int score2 = 0; 
int buttonWidth = 100;
int buttonHeight = 50;
int buttonSpacing = 20; 
int buttonX, buttonYPlayer1, buttonYPlayer2;


void drawButton(int x, int y, String label) {
  fill(255);
  rect(x, y, buttonWidth, buttonHeight);
  fill(0);
  textAlign(CENTER, CENTER);
  text(label, x, y, buttonWidth, buttonHeight);
}

void mousePressed() {
  if (mouseX > buttonX && mouseX < buttonX + buttonWidth) {
    if (mouseY > buttonYPlayer1 && mouseY < buttonYPlayer1 + buttonHeight) {
      score1 = 1;
      score2 = 0;
      isGameOver = true; 
    } 
    else if (mouseY > buttonYPlayer2 && mouseY < buttonYPlayer2 + buttonHeight) {
      score2 = 1;
      score1 = 0;
      isGameOver = true;
    }
  }
}
