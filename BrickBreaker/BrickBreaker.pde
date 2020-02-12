final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = GAME;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause

//ball variable
float bx, by, bvx, bvy; //ball variables, ballx = bx
//paddle variables
float px, py;

//keyboard variables
boolean leftKey, rightKey;





void setup() {
  size(800, 600);
 
  //ball
  bx = width/2;
  by = height/2;
  bvx = 0;
  bvy = 3;
  //paddle
  px = width/2;
  py = height + 10;
 

}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {  
    pause();
  } else {
    println("?");
  }
}
