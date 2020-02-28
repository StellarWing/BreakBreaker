class Brick {
  float x, y;
  color b;
  color g;
  color r;
  int hp;


  Brick() {
    x = gridx;
    y = gridy;
    hp = 3;
    b = #69D2E7; //light blue
    g = #03D44C; //green
    r = #E94E77;
  }
  void act() {
    if (hp > 0 && dist(bx, by, x, y) < 35) {
      hp = hp - 1;
      bvx = (bx - x)/5; //check for reasonable spp
      bvy = (by - y)/5;
    }
  }
  void show() {
    if (hp == 3) {
      fill(b);
      ellipse(x, y, 50, 50);
    } else if (hp == 2) {
     fill(g); 
     ellipse(x, y, 50, 50);
    } else if (hp == 1) {
     fill(r); 
     ellipse(x, y, 50, 50);
    }
  }
}
