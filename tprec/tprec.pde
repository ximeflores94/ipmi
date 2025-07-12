//https://www.youtube.com/watch?v=3hATdxEQYMI
//creación de varibles a utilizar dentro del programa

int cant;
int tam;
color negro, blanco;
PImage reference;

void setup () {
  size( 800, 400);//le doy el tamaño al canva
  reference = loadImage("referencia.png");//cargo la imagen al programa
  cant = 20; //defino un valor inicial para cant
  tam = width/cant;//80
  negro = color(0);//le asigno el color negro a la variable "negro"
  blanco = color(255);// le asigno el color blanco a la variable "blanco"
  noStroke(); //le quito el borde a todas las figuras que se dibujarán
}

void draw () {
  image( reference, 0, 0, 400, 400);//inserto la imagen ya cargada en el cuadrante izquierdo del canva
  ilusion();//llamo la funcion "ilusion"

}


void keyPressed() {
  if ( key == ' ' )
    reiniciar();
}
//aplico un condicional para que si apreto la tecla espacio, se inicie la función "reiniciar"
