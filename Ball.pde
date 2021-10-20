public class Ball {
  private PVector pos;
  private final int SIZE = 150;
  private color COLOR;
  public int value;
  
  public Ball(PVector p) {
    pos = p;
    value = (int)(Math.random()*20); //0-19
    int colorChoice = (int)(Math.random()*6+1);
    if (colorChoice == 1) {
      COLOR = color(255,0,0);
    }
    else if (colorChoice == 2) {
      COLOR = color(0,0,255);
    }
    else if (colorChoice == 3) {
      COLOR = color(0,128,0);
    }
    else if (colorChoice == 4) {
      COLOR = color(255,255,0);
    }
    else if (colorChoice == 5) {
      COLOR = color (255,0,255);
    }
    else {
      COLOR = color(0,0,0);
    }
  }
  
  public void show() {
    fill(COLOR);
    circle(pos.x,pos.y,SIZE); //<>//
    fill(255);
    circle(pos.x,pos.y,SIZE*0.60);
    fill(0);
    textSize(48);
    textAlign(CENTER,CENTER);
    text(value,pos.x,pos.y);
  }
}
