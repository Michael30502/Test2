int hvorMangeT(String s){
  
  //OPGAVE 1: Skriv resten af koden til funktionen "hvorMangeT" så den kan finde antallet af bogstavet 't' i tekst-inputtet
 int result = 0;
 
 char[] alleTegn = s.toCharArray();
 for(int i = 0; i<alleTegn.length;i++){
 println(alleTegn);
   if (alleTegn[i] == 't')
 result++;
 
 }
 
 return result;
}

String detForsteOrd(String s){
  //OPGAVE 2: Skriv og OMSKRIV resten af koden til funktionen "detForsteOrd",- så den retunerer det første ord i tekst-inputtet
 String ord1 = "";
 String[] ord = s.split(" ");
  ord1 =ord[0];
 
 return ord1; 
}

String skriv1OrdOmvendt(String s){
 //OPGAVE 3: Skriv resten af koden så funktionen returnerer input-teksten men nu med første ord skrevet omvendt.
 //Dvs. "Dette er en ny sjov test" bliver til "etteD er en ny sjov test"
 String result="";
String[] ord = s.split(" ");
 
 
  char[] omvendt = ord[0].toCharArray();
  
  for(int i = omvendt.length-1;i>=0;i--){
  
  result += omvendt[i];
 
  }
    
  for(int i =1;i<ord.length;i++){
  result+= " "; 
    result += ord[i];

}

  return result;
 
}

void setup() {
  String teksten = "Dette er en ny sjov test";
  
  size(1000,500);
  clear();
  textSize(20);
  text("teksten = \"" + teksten + "\"",50,50);
  text("Antal af t'er = " + hvorMangeT(teksten),50,100);
  text("Det forste ord er = " + detForsteOrd(teksten),50,150);
  text("Forste ord er nu omvendt = " + skriv1OrdOmvendt(teksten),50,200);
}
