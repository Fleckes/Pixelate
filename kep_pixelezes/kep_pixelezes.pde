PImage img;
int pointillize = 16;

void setup() {
  size(600,600);
  img = loadImage("pic04.jpg");
  
   // size(1000,1000);
  img.resize(600,600);
 // image(img,0,0);
  
  background(0);
  smooth();
}

void draw() {
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  frameRate(350);
  
  
 
  if (mousePressed == true) {
    background(0);
 
  } else {
     fill(0);
  }
  



  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
 
  fill(r,g,b,250);
  ellipse(x,y,pointillize,pointillize);

}
//szia
//sziaasdfasdfasdf