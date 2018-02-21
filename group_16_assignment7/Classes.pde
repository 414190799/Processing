class Enemy {
  float xpos = random(0, 700);
  int ypos = 0;
  int radius = 20;
  
  void fall() {
    ypos += 1;
  }
  
  void display() {
    enemy.resize(0,50);
    image(enemy,xpos, ypos);
  }
}
  
class Player {
  int xpos1;
  int ypos1 = 875;
  int rectW = 20;
  int rectH = 30;
  int endpoint=0;
  boolean mark= false;
  
  
  void display() {
    player.resize(0,50);
    image(player,xpos1, ypos1-50);
  }
  
  void moveLeft() {
    xpos1 -= 20;
  }
  
  void moveRight() {
    xpos1 += 20;
  }
   
  void check(Enemy enemy){
    if (enemy.xpos-xpos1>-30 && enemy.xpos-xpos1<30){
      endpoint=enemy.ypos+10;
      enemy.ypos=0;
      enemy.xpos=random(0, 700);
      counter+=1;
    }
  }
      
  void fire(){
    stroke(255,0,0);
    strokeWeight(5);
    line(xpos1+20,ypos1-50,xpos1+20,endpoint);
  }
}