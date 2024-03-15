color button = color(255, 255, 0);

void finish() {
  scene =2;
  background(0);
  fill(0, 255, 0);
  strokeWeight(5);
  stroke(255, 255, 0);
  rectMode(CENTER);
  rect(width/2, height/2, width/2, height/2);
  fill(0);
  textAlign(CENTER);
  textSize(30);
  text("Game Over!", width/2, 300);
  
  if(score2==1){
  text("Player 2 wins!",200,200);
  text("Your score is " + score2, (width/2),500);
  noLoop();
  }
  
  else if(score1==1){
  text("Player 1 wins!",width/2,height/2);
  text("Your score is " + score1, (width/2),500);
  noLoop();
  }
  
  else{
  text("Its a tie!",200,200);
  text("Your score is " + score1, (width/2),500);
  noLoop();
  }
}
