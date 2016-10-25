class Harambe{
  float x;
  float y;
  float size;
  color theColor;
  
  Harambe(float tempX, float tempY, float tempSize, color tempColor){
    x = tempX;
    y = tempY;
    size = tempSize;
    theColor = tempColor;
  }
  void display(){
    noStroke();
    fill(theColor);
    ellipseMode(CENTER);
   
   //body
   ellipse(x,y+75,size*3,size*3);
  ellipse(x+60,y+40,size+20,size+20);
  ellipse(x-60,y+40,size+20,size+20);
  ellipse(x-95,y+70,size+25,size*4);
  ellipse(x+95,y+70,size+25,size*4);
  ellipse(x-95,y+50,size*2,size+75);
  ellipse(x+95,y+50,size*2,size+75);
  ellipse(x-130,y+120,size+10,size+30);
  ellipse(x+130,y+120,size+10,size+30);
  ellipse(x+55,y-2,size,size);
  ellipse(x-55,y-2,size,size);
   stroke(0);
   
   ellipse(x,y-40,size*2,size*3);//facetop
   ellipse(x,y,size*2,size);//snout
   ellipse(x,y-20,size,size);
   ellipse(x,y-70,size+30,size);
   fill(0);
   ellipse(x-10,y-24,size/3,size/3);//nose
   ellipse(x+10,y-24,size/3,size/3);//nose
   ellipse(x-14,y-60,size/4,size/4);//eye
   ellipse(x+14,y-60,size/4,size/4);//eye
   ellipse(x,y+25,size,size/10);
   fill(255);
   ellipse(x-15,y-62,size/12,size/12);
   ellipse(x-13,y-58,size/12,size/13);
   ellipse(x+13,y-58,size/11,size/12);
   ellipse(x+16,y-62,size/10,size/10);
   //clouds 
   noStroke();
   fill(255);
   ellipse(x,y+180,size*2,size*2);
   ellipse(x+30,y+190,size*2,size*2);
   ellipse(x+50,y+170,size*2,size*2);
   ellipse(x+80,y+190,size*2,size*2);
   ellipse(x+100,y+190,size*2,size*2);
  ellipse(x-30,y+190,size*2,size*2);
  ellipse(x-50,y+170,size*2,size*2);
  ellipse(x-80,y+190,size*2,size*2);
  ellipse(x-100,y+180,size*2,size*2);
 strokeWeight(2);
   stroke(#FFF862);
   noFill();
   ellipse(x,y-100,size*3,size);
  
 
  }
}