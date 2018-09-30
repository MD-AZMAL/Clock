
float st,mt,ht,theta;
int i;

void setup(){
  size(800,800);
  smooth();
}

void draw(){
  background(100,100,100);
  
  // map the angle of second, minute and hour hands
  
  st = map(second(),0,60,0,TWO_PI) - HALF_PI;
  mt = map(minute(),0,60,0,TWO_PI) - HALF_PI;
  ht = map(hour()%12,0,12,0,TWO_PI) - HALF_PI;
  
  // set center of the window as origin
  translate(width/2,height/2);
  
  // body of the clock
  strokeWeight(8);
  stroke(150,150,150);
  fill(200,200,200);
  ellipse(0,0,300,300);
  
  // setting up small dots for each number 1 - 12 
  // i used for making some dots different from others
  for(theta = 0,i=0; theta <= TWO_PI ; theta+=(HALF_PI/15),i++){
    noStroke();
    fill(0);
    if(i%15 == 0)
       ellipse(137*cos(theta),137*sin(theta),10,10);
    else if(i%5 == 0)
       ellipse(137*cos(theta),137*sin(theta),6,6);
    else
       ellipse(137*cos(theta),137*sin(theta),3,3);
  }
  
  // display hour hand
  strokeWeight(5);
  stroke(0,0,255);
  line(0,0,100*cos(ht),100*sin(ht));
  
  // display minute hand
  strokeWeight(3);
  stroke(0,255,0);
  line(0,0,130*cos(mt),130*sin(mt));
  
  // display second hand
  stroke(255,0,0);
  strokeWeight(2);
  line(0,0,125*cos(st),125*sin(st));
  
  // circle at the center of the clock
  noStroke();
  fill(0);
  ellipse(0,0,10,10);
}
