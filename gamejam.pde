
color button = color(255,255,0);
boolean isGameOver = false;
void setup() {
  size(800, 800);
}
void draw() {
  startScreen();
  //game();
  if(isGameOver){
  finish();
  }
}
void startScreen() {
  background(0);
  fill(0, 255, 0);
  strokeWeight(5);
  stroke(255, 255, 0);
  rectMode(CENTER);
  rect(width/2, height/2, width/2, height/2);
  fill(button);
  stroke(0);
  rect(width/2,290,300,50);
  fill(0);
  textAlign(CENTER);
  textSize(30);
  text("Click here to start", width/2, 300);
  if(mouseX<(width/2+300) && mouseX>(width/2-300) && mouseY<(340) && mouseY>(260)){
    button = color(255,100,0);
    if(mousePressed){
      //game();
    }
  }
  else{
   button = color(255,255,0); 
  }
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
