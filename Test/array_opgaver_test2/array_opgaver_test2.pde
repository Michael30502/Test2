int sumAfForsteOgSidste(int[] list){
  //OPGAVE 1: skriv resten af funktionen "sumAfForsteOgSidste", så den beregner summen af først og sidste tal i listen
  return list[0]+list[list.length-1];
}

int sumAfNegativeTal(int[] list){
 //OPGAVE 2: skriv resten af funktionen "sumAfNegativeTal", så den beregner summen af alle negative tal i listen
 int result = 0;
 for(int i=0;i<list.length;i++){
 
 if(list[i]<0)
 result+=list[i];
 
 }
 
 return result;
}

int antalNegativeTal(int[] list){
//OPGAVE 3: skriv og RET funktionen "antalNegativeTal", så den finder antallet af negative tal i en listen
 int result = 0;
 for(int i=0;i<list.length;i++){
 
 if(list[i]<0)
 result++;
 
 }

 return result;
}

void setup() {
  int[] mangeTal = {-7, 2, -3, 4, -8, 8, 9, 6, 3, 5};
  
  size(1000,500);
  clear();
  textSize(20);
  text(arraySomTekst(mangeTal),50,50);
  text("OPGAVE 1 : Summen af første og sidste tal i listen: " + sumAfForsteOgSidste(mangeTal),50,100);
  text("OPGAVE 2 : Sum af alle negative tal i listen: " +sumAfNegativeTal(mangeTal),50,150);
  text("OPGAVE 3 : Antallet af negative tal i listen: " + antalNegativeTal(mangeTal),50,200);  
}

String arraySomTekst(int[] liste){
  String r = "Listen = {" + liste[0];
  for(int i=1;i<liste.length;i++){
    r = r +"," + liste[i];
  }
  return r + "}";
}
