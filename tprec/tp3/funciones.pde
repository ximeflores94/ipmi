//void distanciamouse(float i, float j){
//  dist( i*tam, j*tam, mouseX-400, mouseY);
//  dist( i*tam+tam/2, j*tam+tam/2, mouseX-400, mouseY);
//}
boolean d1( float x, float y){
  boolean resultado = false;
  if (dist(x*tam, y*tam, mouseX-400, mouseY) < cant*5){
  resultado = true; }
  else {
    resultado = false;
}
return resultado;
}

boolean d2( float z, float k){
  boolean resultado = false;
  if (dist( z*tam+tam/2, k*tam+tam/2, mouseX-400, mouseY) < tam){
  resultado = true; }
  else {
    resultado = false;
}
return resultado;
}

  
void ilusion() {//creo una funcion nueva de nombre ilusion
  translate( 400, 0);//traslado mi todo el dibujo al cuadrante derecho del canva
  for (int i=0; i < cant; i++) { //inicio un ciclo for para la variable i, y le digo que parta en 0, y siempre y cuando sea mayor a cant (que definimos con valor 20), vaya sumando 1 a i
    for (int j = 0; j < cant; j++) {//hacemos lo mismo pero para la variable j
      if ((i+j) % 2 == 0) {// inicio un condicional con un modulo para definir que figura es la que vamos a pintar, el símbolo % me entrega el "resto" de una división, con esto, podemos saber si la figura tiene asignada un valor par o impar.
        fill(negro);//si la figura es par, se pintara de negro
      } else if ( d1(i, j)) {
         fill( negro ); //agregamos una condicional para hacer un movimiento loco con el mouse, donde al pasar el mouse por los cuadrados negros, se pintará un área de 5x5 cuadrados de color negro
      } 
      else {
        fill(blanco);//si la figura es impar se pintara de blanco
      }
      rect( i*tam, j*tam, tam, tam);// y dibujamos la grilla de cuadrados
      if ((i+j) % 2 == 0) {//luego repetimos el mismo procedimiento para los circulos que irán en el centro de los cuadrados
        fill(blanco);// si es par, se pintara de blanco
      } else if (d2( i, j)){
        fill( blanco );// a la vez que los cuadrados se pintan de negro, los circulos se irán pintando de blanco, en este caso, cada circulo negro en donde el mouse se posicione cambiará de color a blanco.
      } else {
        fill(negro);//si es impar se pintará de negro
      }
      ellipse( i*tam+tam/2, j*tam+tam/2, 20, 20);// finalmente dibujamos los circulos concentricos al cuadrado
    }
  }
}

void reiniciar() {//creamos una función para reiniciar el programa, donde devolvemos las variables a sus valores iniciales
  mouseX = 0;
  mouseY = 0;
  negro = color(0);
  blanco = color(255);
}

void mousePressed() {//creamos una función para cambiar de color tanto los cuadrados como los circulos al hacer click
  negro = color(random(255), random(255), random(255));
  blanco = color(random(255), random(255), random(255));
}
