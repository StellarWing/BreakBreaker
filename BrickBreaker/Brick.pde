class Brick {
  float x, y;
  color c;
  int hp;


  Brick() {
   x = gridx;
   y = gridy;
    hp = 1;
    c = #69D2E7; //light blue
  }
  void act() {
    if (hp > 0 && dist(bx, by, x, y) < 35) {
      hp = hp - 1;
      bvx = (bx - x)/5; //check for reasonable spp
      bvy = (by - y)/5;
    }
  }
  void show() {
    if (hp > 0) {
      fill(c);
      ellipse(x, y, 50, 50);
    }
  }
}
