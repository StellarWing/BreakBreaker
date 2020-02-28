ArrayList<Brick> myBricks;

final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = INTRO;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause

//ball variable
float bx, by, bvx, bvy; //ball variables, ballx = bx
//paddle variables
float px, py;

//keyboard variables
boolean leftKey, rightKey;


int gridx;
int gridy;
int score, lives, highscore;



void setup() {
  myBricks = new ArrayList<Brick>();
  
  
  
  gridx = 0;
  gridy = 0;
  int i = 0;
  while(i < 48) {
   myBricks.add(new Brick() ); //calling constructor
   gridx = gridx + 70;
   if (gridx >= 800) {
     gridx = 0;
     gridy = gridy + 40;
     
   }
    i++;
  }
  
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

//{
//    while (y < 300) {
//      x = x + 40;
//      if (x > width) {
//        x = 0;
//        y = y + 15;
//        
//      }
//    }
