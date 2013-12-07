library projetgroupev1;
import 'dart:html';
import 'dart:math';
import 'dart:async';
part 'triangle.dart';
part 'cercle.dart';
part 'ligne.dart';


Timer timer;
draw(context,lignes) {
  clear() {
    context.fillStyle = "#ffffff";
    context.fillRect(0, 0, context.canvas.width, context.canvas.height);
  }
  clear();
  for (var i = 0; i <lignes.length; i++) 
  {(lignes)[i].draw();}
  
}

drawPath(context,path) {
  for (var i = 0; i <path.length; i++) 
  {(path)[i].draw();}
  
}

List attente(){
  var cerclesAtt = new List(3);
  var c1 = new Cercle(175, 385);
  var c2 = new Cercle(220, 385);
  var c3 = new Cercle(265, 385);
  cerclesAtt[0]=c1;
  cerclesAtt[1]=c2;
  cerclesAtt[2]=c3;
  return(cerclesAtt);
}

List attToSer1(){
  List res= new List(712);
  num j=0;
  for (var i = 445; i <524; i++) { //79
    res[j] = new Cercle(i, 385);
  j++;
  }
  for (var i = 385; i>289; i--) {   //100
    res[j] = new Cercle(524, i);
   j++;
  }
  for (var i = 524; i <615; i++) {   //91
    res[j] = new Cercle(i, 289);
  j++;
  }
  res[j-1].delete();
  print(res[j-1].gety());
  for (var i = 289; i <381; i++) {   //92 
    res[j] = new Cercle(845, i);
  j++;
  }
  for (var i = 845; i<922; i++) {    //77
    res[j] = new Cercle(i, 381);
   j++;
  }
  res[j-1].delete();
  for (var i = 381; i>314; i--) {    //67
    res[j] = new Cercle(1160, i);
   j++;
  }
  for (var i = 1160; i<1317; i++) {    //157
    res[j] = new Cercle(i, 314);
   j++;
  }
  for (var i = 314; i>275; i--) {    //39
    res[j] = new Cercle(1317, i);
   j++;
  }
  res[j-1].delete();
  return (res);
}

List attToSer2(){
  List res= new List(783);
  num j=0;
  
  for (var i = 445; i <524; i++) { //79
    res[j] = new Cercle(i, 385);
  j++;
  }
  for (var i = 385; i<489; i++) {   //104
    res[j] = new Cercle(524, i);
   j++;
  }
  for (var i = 524; i <615; i++) {   //91
    res[j] = new Cercle(i, 489);
  j++;
  }
  res[j-1].delete();
  for (var i = 845; i <855; i++) {   //20
    res[j] = new Cercle(i, 489);
  j++;
  }
  for (var i = 489; i>381; i--) {    //108
    res[j] = new Cercle(855, i);
   j++;
  }
  for (var i = 855; i<922; i++) {    //67
    res[j] = new Cercle(i, 381);
   j++;
   res[j-1].delete();
  }
  for (var i = 381; i>314; i--) {    //67
    res[j] = new Cercle(1160, i);
   j++;
  }
  for (var i = 1160; i<1317; i++) {    //157
    res[j] = new Cercle(i, 314);
   j++;
  }
  for (var i = 314; i>275; i--) {    //39
    res[j] = new Cercle(1317, i);
   j++;
  }
  res[j-1].delete();
  return (res);
}



void main() {
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');
  var width = canvas.width;
  var height = canvas.height; 
  var lignes = new List(35);
  var ligne1AtoF = new ligne (140,361,300,361);
  var ligne2AtoF = new ligne (140,408,300,408);
  var ligne1F = new ligne (200,361,500,361);
  var ligne2F = new ligne (200,408,500,408);
  var ligne3F = new ligne (500,361,500,270);
  var ligne4F = new ligne (500,408,500,510);
  var ligne1FtoS1 = new ligne (ligne3F.xArr, ligne3F.yArr,width/2-85 , 270);
  var ligne1FtoS2 = new ligne (ligne4F.xArr, ligne4F.yArr,width/2-40 , 510);
  var ligneS1toS2 = new ligne (550,308,550,471);
  var ligne1S1 = new ligne (550,471,615,471);
  var ligne1S2 = new ligne (550,308,615,308);
  var ligne2S2 = new ligne (width/2+100,463,820,463);
  var ligne2S1 = new ligne (width/2+100,312,820,312);
  var ligne2S1toS2 = new ligne (820,312,820,463);
  var ligne3S1 = new ligne (width/2+100,262,875,262);
  var ligne3S2 = new ligne (width/2+100,512,875,512);
  var ligne4S1 = new ligne (875,262,875,362);
  var ligne4S2 = new ligne (875,512,875,400);
  var ligneS1ToD = new ligne (875,362,913,362);
  var ligneS2ToD = new ligne (875,400,913,400);
  var ligne1Fhaut = new ligne (327,442,327,595);
  var ligne2Fhaut = new ligne (377,442,377,555);
  var ligne1haut = new ligne (327,595,1065,595);
  var ligne2haut = new ligne (377,555,1010,555);
  var lignehautToDec = new ligne (1010,555,1010,350);
  var ligne1hautToDec = new ligne (1065,595,1065,350);
  var ligne1SorToDec = new ligne (1291,288,1133,288);
  var ligne2SorToDec = new ligne (1133,288,1133,343); 
  var ligneSorToDes = new ligne (1190,336,1190,420);
  var ligne1DecToDes = new ligne (1133,355,1133,464); 
  var ligne2DecToDes = new ligne (1133,464,1291,464); 
  var ligneToSor = new ligne (1190,336,1341,336);
  var ligneToDes = new ligne (1190,420,1341,420);
  var ligne1ToSor = new ligne (1341,336,1341,285);
  var ligne1ToDes = new ligne (1341,420,1341,465);
  lignes[0]=ligne1AtoF;
  lignes[1]=ligne2AtoF;
  lignes[2]=ligne1F;
  lignes[3]=ligne2F;
  lignes[4]=ligne3F;
  lignes[5]=ligne4F;
  lignes[6]=ligne1FtoS1;
  lignes[7]=ligne1FtoS2;
  lignes[8]=ligneS1toS2;  
  lignes[9]=ligne1S1;
  lignes[10]=ligne1S2;
  lignes[11]=ligne2S1;
  lignes[12]=ligne2S2;
  lignes[13]=ligne2S1toS2;
  lignes[14]=ligne3S1;
  lignes[15]=ligne3S2;
  lignes[16]=ligne4S1;
  lignes[17]=ligne4S2;
  lignes[18]=ligneS1ToD;
  lignes[19]=ligneS2ToD;  
  lignes[20]=ligne1Fhaut;
  lignes[21]=ligne2Fhaut;   
  lignes[22]=ligne1haut;
  lignes[23]=ligne2haut;   
  lignes[24]=lignehautToDec;
  lignes[25]=ligne1hautToDec;
  lignes[26]=ligne1SorToDec;
  lignes[27]=ligne2SorToDec;
  lignes[28]=ligneSorToDes;
  lignes[29]=ligne1DecToDes;
  lignes[30]=ligne2DecToDes;
  lignes[31]=ligneToSor;
  lignes[32]=ligneToDes;
  lignes[33]=ligne1ToSor;
  lignes[34]=ligne1ToDes;
  draw(context,lignes);
    
  ImageElement imgArr = document.querySelector('#arrivee');
  context.drawImage(imgArr, 50, 360);
  ImageElement imgPeps = document.querySelector('#fpeps');
  context.drawImage(imgPeps, 300, 360);
  ImageElement imgfhaut1 = document.querySelector('#fhaut');
  context.drawImage(imgfhaut1, 300, 360+48); 
  ImageElement imgser1 = document.querySelector('#serveur1');
  context.drawImage(imgser1, width/2-40, 360-100);
  ImageElement imgfdroite1 = document.querySelector('#fdroite');
  context.drawImage(imgfdroite1, width/2-85, 360-112); 
  ImageElement imgser2 = document.querySelector('#serveur2');
  context.drawImage(imgser2, width/2-40, 360+100);
  ImageElement imgfdroite2 = document.querySelector('#fdroite');
  context.drawImage(imgfdroite2, width/2-87, 360+90); 
  ImageElement imgDec = document.querySelector('#decision');
  context.drawImage(imgDec, width/2+250, 360-20);  
  ImageElement imgfdroite3 = document.querySelector('#fdroite');
  context.drawImage(imgfdroite3, width/2+212, 360-20); 
  ImageElement imgSor = document.querySelector('#sortie');
  context.drawImage(imgSor, width-150, 360-150); 
  ImageElement imgfhaut2 = document.querySelector('#fhaut');
  context.drawImage(imgfhaut2, width-136, 360-109); 
  ImageElement imgdes = document.querySelector('#destruction');
  context.drawImage(imgdes, width-150, 360+150); 
  ImageElement imgfbas2 = document.querySelector('#fbas');
  context.drawImage(imgfbas2, width-138, 360+105); 
  
  
  //dessin des cercles

  drawPath(context,attente());
  num vitesse = 2;
  voidRun(vitesse,attToSer1());
}
void dessin(List l, num i){
  if(i<698){
    l[i].delete();
    l[i].draw();
  }
  else
  {
  timer.cancel();
  }
}
  voidRun(num vitesse, List parcour){
    num i=0;
    num j=0;
    timer = new Timer.periodic(new Duration(milliseconds:vitesse), (Timer timer) {  
      dessin(parcour,i++);
    });
    
   /* timer = new Timer.periodic(new Duration(milliseconds:45), (Timer timer) {  
      dessin(attToSer2(),j++);
    });*/
  }
  
