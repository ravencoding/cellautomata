Handler handler;


void setup(){
  size(Const.WIN_X, Const.WIN_Y);
  handler = new Handler();
  frameRate(30);
}

int modulo = 30;
int modcounter = 0;
void draw(){
  background(255);
  handler.world.drawChip();
  if(modcounter++ % modulo == 0){
    handler.world.stepforward();
  }
  
  handler.saveImg();
}
