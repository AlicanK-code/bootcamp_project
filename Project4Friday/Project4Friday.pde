// things to add
// use keyboard input 'R' to reset mouse counter - DONE
// add a box and add the click counter text above it to make it look better
// when left click up, everything else down for the image

// things could add
// while clickCounter = 999; clickCounter + 0
// add buttons

PImage invader1, invader2;
int iSize = 200; // image size
int clickCounter = 0 ;

void setup(){
  size(1000,1000);
  textSize(80);
  
  
  invader1 = loadImage("invader11.up.png");
  invader2 = loadImage("invader11.down.png");
  
}

void draw(){
  background(255); // comment background for a full nice looking background
  for(int y = 35; y < height; y += 35){
    for(int x = 35; x < width; x += 35){
      if(random(100)<50){
        fill(random(255),random(0),random(255),64);
          ellipse(x,y,40,40);
      }
    }
    
    if(mouseButton == LEFT){
      image(invader1,400,350,iSize,iSize);
    }else{
      image(invader2,400,350,iSize,iSize);
    }
    
    fill(255);
    rect(200,120,600,100);
    fill(0);
    text("Click counter: " + clickCounter , 200 , 200);
    
  //println(mouseX,mouseY); //printing coordinates of x and y
    
}
}
void mouseClicked(){
  clickCounter++;
}
void keyPressed(){
  if(key == 'r' || key == 'R'){ // resets counter to 0
    clickCounter = 0;
  }
  }
