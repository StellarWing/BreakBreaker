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
float sliderx;
float circlesize;



void setup() {
  myBricks = new ArrayList<Brick>();

  sliderx= 200;
  
  score = 0;
  highscore = 0;



  gridx = 0;
  gridy = 0;
  int i = 0;
  while (i < 48) {
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

    stroke(100);
    line(600, 300, 200, 300); //track
    ellipse(sliderx, 300, 30, 30); //knob

    if (mousePressed) {
      if (dist(sliderx, 300, mouseX, mouseY) < 15) {
        sliderx = mouseX;

        if (sliderx < 200) {
          sliderx = 200;
        }
        if (sliderx > 600) {
          sliderx = 600;
        }
      
      circlesize = map(sliderx, 200, 600, width/2, 600);
      
      }
    }  else if (mode == GAME) {
      game();
    } else if (mode == GAMEOVER) {
      gameover();
    } else if (mode == PAUSE) {  
      pause();
    } else {
      println("?");
    }
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
