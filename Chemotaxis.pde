Bacteria[] colony;
 void setup() {     
   size(300,300);   
   colony = new Bacteria[100];
   for(int i = 0; i < colony.length; i++)
     colony[i] = new Bacteria();
 }   
 void draw() {    
   background(0);
   for(int i = 0; i < colony.length; i++) {
     colony[i].show();
     colony[i].move();
   } 
 }  
 class Bacteria {     
   int myX, myY;
   Bacteria()
   { 
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
   }
   void move()
   {
     if(myX < 500 || myY < 500){
     myX += ((int)(Math.random()*3)-1)*3;
     myY += ((int)(Math.random()*3)-1)*3;
     }
   }
   void show()
   {
     fill(225);
     rect(myX,myY,50,50);
   }
 }
