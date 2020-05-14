import java.util.*;


//ERICK ALBERTO RODRIGUEZ RODRIGUEZ
//clase de circulo
//Circulo c1,c2,c3,
Circulo tmp;
List <Circulo> lista;
//var random
int n=-1; int k=35;
float x,y;
//otras variables
String q="";
void setup() {
  size(400,400);
  lista = new <Circulo>ArrayList();
  tmp=null;
  
  for(int i=0;i<k;i++) {
    do{
      x=random(width);
    }while(x>width-50);
    do{
      y=random(height);
    }while(y>height-50);
    tmp= new Circulo(x,y,50,i);
    lista.add(tmp);
  }
}

void draw() {
  background(0);
  for(int i=0;i< lista.size();i++) {
    tmp = lista.get(i);
    tmp.dibuja();
  }
  
  textSize(24);
  fill(#14cedb);
  //text(q,40,50);
  
  if( n !=-1)
  fill(255);
}

void mousePressed() {
  q="";
  tmp = null;
  fill(#DB145D);
  for(int i=lista.size()-1; i>=0; i--) {
    tmp = lista.get(i);
    if(tmp.isAdentro(mouseX, mouseY)) {
      n= tmp.id;
      q+= tmp.id;
      tmp.mover= true;
      break;
    }
  }
}
void mouseReleased() {
  q="";
  n = -1;
  tmp.mover = false;
  tmp = null;
}

void mouseDragged() {
  tmp = null;
  tmp = lista.get(n);
  tmp.x = mouseX;
  tmp.y = mouseY;
}
