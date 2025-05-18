//Definición de variables generales
PFont egipcia, egipcia_2;
int pantalla;
int posX = 640;
int posX_2 = 0;
int posX_3 = 640;
int posX_4 = 640;
int posY= 0;
int posY_2 = 480;
int posY_3 = 0;
int tamtext = 1;

//Definición de variables pantalla 1
PImage portada;
String frase_1 = "Ambientado en el Egipto Ptolemaico,"; 
String frase_2 = "durante el reinado de Ptolomeo XIII y Cleopatra.";
String frase_3 = "49 A.C - 44 A.C";

//Definición de variables pantalla 2
PImage bayekyaya;
String portada_2 = "Bayek de Siwa, el último Medjay y su esposa Aya,"; 
String frase_4 = "comienzan una búsqueda de venganza";
String frase_5 = "tras el asesinato de su hijo Khemu.";

//Definición de variables pantalla 3
PImage ocultos;
String frase_6 = "La Orden de los Antiguos es la principal responsable del asesinato de Khemu. Desean controlar el mundo mediante tiranía. Para esto, buscan unos artefactos pertenecientes a una civilación antigua, y no dudarán en derramar sangre para conseguirlos.";

//Definición de variables pantalla 4
PImage bayek;
String frase_7 = "Bayek y Aya emprenden la búsqueda de los miembros";
String frase_8 = "de la Orden por caminos separados, su misión..."; 
String frase_9 = "asesinar a cada miembro de la Orden de los Antiguos.";

//Definición de variables pantalla 5
PImage bayek_playa;
String frase_10 = "Luego de haber acabado con la Orden, Bayek y Aya se reunen en la playa, ambos deciden que debería existir alguien que frustre los planes de todos los tiranos en el futuro, es entonces que deciden dejar su legado y formar la Orden de los Ocultos.";

//Definición de variables pantalla 6
PImage amuleto;
String frase_11 = "Bayek deja caer sobre la arena un cráneo de aguila, amuleto que lo acompañó durante su aventura, dejando una huella en la arena.";

//Definición de variables pantalla 7
PImage simbolo;
String frase_12 = "La figura que se formó, se convertiría en el símbolo que identificaría a la Orden y siglos después, a la hermandad de los Asesinos.";

//Definición de variables pantalla 8
PImage fin;







void setup(){
  //Valores por defecto de mis variables
  size(640,480);
  pantalla=1;
  portada=loadImage("Portada.jpg");
  bayekyaya=loadImage("bayek-aya.png");
  ocultos=loadImage("ocultos.jpg");
  bayek = loadImage("bayek.jpg");
  bayek_playa = loadImage("bayek_playa.jpg");
  amuleto = loadImage("amuleto.jpg");
  simbolo = loadImage("simbolo.jpg");
  fin = loadImage("fin.jpg");
  egipcia=createFont("jmhlaudanumca.ttf",25);
  egipcia_2=createFont("oval-egyptian.ttf",20);
  //textAlign(RIGHT,CENTER);
}

void draw(){
 
  //Primera pantalla

  if (pantalla == 1 && tamtext <= 20){
    image(portada, 0, 0, 640, 480);
    fill(255);
    frameRate(20);
    tamtext = tamtext + 1;
    textAlign(RIGHT,CENTER);
    textFont(egipcia_2);
    textSize(tamtext);
    text(frase_1,610,30,60);
    text(frase_2,610,60);
    textFont(egipcia_2);
    textSize(tamtext);
    text(frase_3,610,90);
  }
  else if (frameCount == 20*2){
    frameRate(60);
  }

  //Segunda pantalla  
  if (frameCount == (60*5)) 
  {pantalla = 2;
  }
   else if (pantalla == 2 ){
 textAlign(CENTER,CENTER);
 image(bayekyaya, 0, 0, 640, 480);
  if (posY <= 350){
   posY = posY + 2;
  }
   noStroke();
   fill(0,95);
   rect(20, posY-30, 600, 120,20);
   fill(250);
   textFont(egipcia);
   textSize(30);
   text(portada_2,320,posY);
   text(frase_4,320,posY+30);
   text(frase_5,320,posY+60);
  }
  
   //Tercera Pantalla
    if (frameCount == (60*12)) 
  {pantalla = 3;
  frameRate(20);
  }
  else if (pantalla == 3){
 textAlign(LEFT, CENTER);
 image(ocultos, 0, 0, 640, 480);
 fill(0, 90);
 rect( 0, 0, 640, 480);
 fill(255);
 posY_2 = posY_2-2;
 textFont(egipcia);
 textSize(30);
 text(frase_6,20,posY_2, 610, 200);
  
  }

  //Cuarta Pantalla
   if (frameCount == (60*18)) 
  {pantalla = 4;
  frameRate(60);
  }
  else if (pantalla == 4 ){
 textAlign(CENTER,CENTER);
 image(bayek, 0, 0, 640, 480);
  if (posX_2 <= 590){
   posX_2 = posX_2 + 3;
  }
   noStroke();
 fill(0,95);
 rect(posX_2-570, 320, 600, 120,20);
   fill(250);
   textFont(egipcia);
   textSize(25);
   text(frase_7,posX_2-280, 350);
   text(frase_8,posX_2-280, 380);
   text(frase_9,posX_2-280, 410);
   
 }
   
 //Quinta Pantalla
 
  if (frameCount == (60*28)) 
  {pantalla = 5;
  }
  else if (pantalla == 5 ){
 textAlign(CENTER,CENTER);
 image(bayek_playa, 0, 0, 640, 480);
  if (posY_3 <= 350){
   posY_3 = posY_3 + 1;
  }
   noStroke();
   fill(0,95);
   rect(20, posY_3-30, 600, 120, 20);
   fill(250);
   textFont(egipcia);
   textSize(20);
   text(frase_10, 20, posY_3-40, 580, 150);
     
  }
  
  //Sexta Pantalla
  
  if (frameCount == (60*40)){ 
    pantalla = 6;
  }
    else if (pantalla == 6 ){
      textAlign(LEFT,CENTER);
      image(amuleto, 0, 0, 640, 480);
      posX_3 = posX_3-2;
      fill(255);
      textFont(egipcia);
      textSize(35);
      text(frase_11,posX_3, 410);
 }
  
   //Séptima Pantalla
  
  if (frameCount == (60*60)){ 
    pantalla = 7;
  }
    else if (pantalla == 7 ){
      textAlign(LEFT,CENTER);
      image(simbolo, 0, 0, 640, 480);
      posX_4 = posX_4-2;
      fill(255);
      textFont(egipcia);
      textSize(35);
      text(frase_12,posX_4, 410);
 }
  
  //Octava Pantalla y final
  
    if (frameCount == (60*80)){ 
    pantalla = 8;
  }
  //Botón de reinicio
  else if (pantalla == 8){
    //if (pantalla == 1){
    image(fin, 0, 0, 640, 480);
    fill(255, 50);
    rect( 245, 410, 160, 50, 20);
    fill (255);
    textAlign(LEFT,CENTER);
    textFont(egipcia);
    textSize(25);
    text ("REINICIAR", 260, 435);
  }
  if (mousePressed){
  }
  
  
println(mouseX + "/" + mouseY);
println( frameCount );
println(tamtext);
}

  void mousePressed(){
    if (mouseX > 245 && mouseX < 245+160 && mouseY > 410 && mouseY < 410+50 ){
     pantalla = 1;
     posX = 640;
     posX_2 = 0;
     posX_3 = 640;
     posX_4 = 640;
     posY = 0;
     posY_2 = 480;
     posY_3 = 0;
     tamtext = 1;
     frameCount = 0;
    }
  }
  

//"Medjay nombre dado a unos guerreros cuyo deber es proteger al faraón"
