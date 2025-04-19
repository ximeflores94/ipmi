PImage autoelo_2;
color azul = #003f7d;
color rojo = #830000;
PFont Racing;

void setup(){
size(800,400);
autoelo_2=loadImage("autoelo_2.png");
Racing = createFont("Racing Games.ttf",40);
}
void draw(){
  background(200);
image( autoelo_2, 0, 0, 400, 400);
strokeWeight(2);
stroke(0,0,0);
line(545,100,250+400,100);//union ruedas altas
line(545,300,650,300);//union ruedas bajas
strokeWeight(1);
fill(0);//detalles ruedas up
quad(558,110,558,90,588,80,588,110);
quad(620,110,610,80,558+80,90,558+80,110);
//detalles de ruedas down
rect(563,260,5,115);
rect(628,260,5,115);
rect(558,345,80,20);
fill(255);
quad(568,140,568+25,30,568+35,30,628,140);//punta del auto
stroke(255);
rect(568,140,60,200);//cuerpo del auto
fill(0);
stroke(0);
quad(570,60,570,50,568+25,50,568+25,60);//aleron izq.
quad(530,70,530,50,580,50,570,70);//aleron izq.
rect(603,50,23,10);//aleron dere.
quad(626,70,616,50,666,50,666,70);//aleron dere.
fill(255);
quad(548,175,548,140,568,140,568,200);//trapecio arriba izq.
quad(628,200,568+60,140,568+80,140,568+80,175);//trapecio arriba dere.
quad(548,260,548,220,568,200,568,280);
quad(628,280,628,200,568+80,220,568+80,260);
//colores
strokeWeight(0);
fill(rojo);
stroke(rojo);
quad(578,200,578,190,598,160,598,200);//franja medio
quad(598,200,598,160,618,190,618,200);//franja medio
quad(548,175,548,140,568,140,568,175);//trapecio arriba izq.
rect(628,140,20,35);//trapecio arriba dere.
fill(255);
stroke(255,255,255);
ellipse(598,210,40,30);
ellipse(559,172,22,15);
ellipse(638,172,22,15);
fill(azul);
stroke(azul);
quad(575,110,593,30,603,30,622,110);//punta auto
quad(568,341,588,320,608,320,628,341);
rect(568+10,200,40,140);//franja del medio
fill(255);
stroke(255);
ellipse(589,108,24,40);
ellipse(607,108,24,40);
fill(0);
rect(583,100,30,70,20);//rectangulo negro
//texto
fill(255);
textFont(Racing);
textSize(25);
text("20",581,320);
text("E",590,235);
text("L",590,260);
text("O",589,285);

textSize(10);
text("20",551,155);
text("20",631,155);
text("ELO",588,335);


fill(0);//ruedas
rect(515,76,30,50,10);
rect(650,76,30,50,10);
rect(650,280,30,50,10);
rect(515,280,30,50,10);

strokeWeight(1);
stroke(255,255,255);
line(568,138,568,280);
strokeWeight(1);
stroke(255,255,255);
line(628,138,628,280);

fill(255);
triangle(568+25,200,568+30,205,568+35,200);

fill(200);
stroke(200);
ellipse(598,143,30,40);
fill(35,29,63);
stroke(35,29,63);
ellipse(598,143,25,30);
fill(69,107,147);
stroke(69,107,147);
circle(592,148,5);

println(mouseX + " / " + mouseY);
}
