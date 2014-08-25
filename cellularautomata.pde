Handler handler;


void setup(){
  size(Const.WIN_X, Const.WIN_Y);
  handler = new Handler();
  frameRate(1);
}


void draw(){
  background(255);
  handler.world.drawChip();
  handler.world.stepforward();
}
