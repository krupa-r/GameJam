void setup() {
  size(800, 800);
}
void draw() {
  finish();
}
void finish() {
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
  //if(score2>score){
  //text("Player2 wins!",200,200);
  //text("Your score is " + score2, 200,250);
  //noLoop();
  //}
  //else if(score>score2){
  //text("Player1 wins!",width/2,height/2);
  //text("Your score is " + score, ,height/2+20);
  //noLoop();
  //}
  //else{
  // text("Its a tie!",200,200);
  //text("Your score is " + score, 200,250);
  noLoop();
  // }
  // }
}
