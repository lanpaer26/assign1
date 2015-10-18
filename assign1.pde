/* please implement your assign1 code in this file. */
PImage ship;
PImage hp;
PImage treasure;
PImage enemy;
PImage bg1;
PImage bg2;
int x;
int y;
int z;
int w;
int h;
int a;
void setup () {
  size(640,480) ;  // must use this size.
  ship=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png");
  enemy=loadImage("img/enemy.png");
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  x=floor(random(0,640));
  y=floor(random(0,480));
  a=floor(random(0,200));
  h=0;
}

void draw() {
  background(0);
  image(bg1,w,0);
  image(bg2,h,0);
  image(ship,550,240);
  rect(10,0,a,30);
  fill(255,0,0);
  image(hp,0,0);
  image(treasure,x,y);
  image(enemy,z,100);
  z=z+2;
  z= z% 640;
  h++;
  if(h>=641){
    h -= 1282;
  }
  if(h>=641 || h<0)
    w++;
  else{
    w = h-641;
  }
  
  
}
