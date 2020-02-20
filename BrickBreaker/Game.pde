void game() {
  background(255);
  
  int i = 0;
  while (i < 50) {
   Brick b = myBricks.get(i);
   b.act();
   b.show();
   i++;
  }
  
  ball();
  paddle();
}

void gameClicks() {
}

void ball() {

  ellipse(bx, by, 20, 20);

  bx = bx + bvx;
  by = by + bvy;
  if (bx < 0 || bx > width) { //width = 800

    bvx = -bvx;
  }  
  if (by < 0 || by > height) { //height = 600

    bvy = -bvy;
  }
  if (dist(px, py, bx, by) < 60) {
   bvx = (bx - px)/10;
   bvy = (by - py)/10;
  }
}

void paddle() {
  ellipse(px, py, 100, 100);
  if (rightKey) px = px + 5;
  if (leftKey)  px = px - 5;
}
