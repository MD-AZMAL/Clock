
float st,mt,ht,theta;
int i;

void setup(){
  size(400,400,P2D);
  smooth();
  theta = 0;
}

void draw(){
  background(noise(theta)*255,noise(325+theta)*255,noise(445+theta)*255);

  st = map(second(),0,60,0,TWO_PI) - HALF_PI;
  mt = map(minute(),0,60,0,TWO_PI) - HALF_PI;
  ht = map(hour()%12,0,12,0,TWO_PI) - HALF_PI;
  translate(width/2,height/2);
  
  strokeWeight(8);
  stroke(150,0,150);
  fill(200,0,200);
  ellipse(0,0,300,300);
  
  for(float theta = 0,i=0; theta <= TWO_PI ; theta+=(HALF_PI/15),i++){
    noStroke();
    fill(255);
    if(i%15 == 0)
       ellipse(137*cos(theta),137*sin(theta),10,10);
    else if(i%5 == 0)
       ellipse(137*cos(theta),137*sin(theta),6,6);
    else
       ellipse(137*cos(theta),137*sin(theta),3,3);
  }
  
  strokeWeight(3);
  stroke(200,255,0);
  line(0,0,130*cos(mt),130*sin(mt));
  
  stroke(255,200,0);
  strokeWeight(2);
  line(0,0,125*cos(st),125*sin(st));
  
  strokeWeight(5);
  stroke(0,200,255);
  line(0,0,100*cos(ht),100*sin(ht));
  
  noStroke();
  fill(0);
  ellipse(0,0,10,10);
  theta+=0.001;
}