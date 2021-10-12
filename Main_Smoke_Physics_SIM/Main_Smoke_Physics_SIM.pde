
SmokeALGO smokealgo;


void settings(){
  size(N*SCALE,N*SCALE);
}

void setup() {
   smokealgo = new SmokeALGO(0.1,0,0);
}

void mouseDragged()
{
  smokealgo.AddDensity(mouseX/SCALE,mouseY/SCALE,100);
  smokealgo.AddVelocity(mouseX/SCALE,mouseY/SCALE,100);
}

void draw(){
  background(0);
  smokealgo.step();
  smokealgo.renderD();
}
