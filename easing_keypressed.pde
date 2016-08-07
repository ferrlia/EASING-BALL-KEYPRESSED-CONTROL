float x;
float y;
float easing = 0.03; 
int ln; 
int radius = 10; 
int edge = 56; 
int inner = edge + radius; 


void setup() {
  size(640, 360); 
  noStroke();  
}

void draw() { 
  background(51);
  

  ellipse(x, y, 66, 66);
  if (keyPressed && (key == CODED)) { 
    if (keyCode == LEFT) { 
      x -= (x--)*easing; 
    } 
    else if (keyCode == RIGHT) { 
      x += (x++)*easing; 
    } 
    else if (keyCode == UP) { 
      y -= (y--)*easing; 
    } 
    else if (keyCode == DOWN) { 
      y += (y++)*easing; 
    } 
    x = constrain(x, inner, width-inner); 
    y = constrain(y, inner, height-inner); 
  } 
} 