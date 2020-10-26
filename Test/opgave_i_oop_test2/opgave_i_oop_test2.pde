//OPGAVE I OOP
//---------------------------------------------
//FJERN SÅ MANGE GENTAGELSER I KODEN SOM DU KAN
//VED AT INTRODUCERE NEDARVING FRA EN NY KLASSE
//
//ps: prøv at køre programmet for at se hvad det gør

void setup(){
  Kat  kat1   = new Kat("Misse",10,5);
  Hund hund1  = new Hund("Vaps",10,7);
  kat1.udskrivInfo();
  hund1.udskrivInfo();
  
}


class Dyr{

String navn;
float alder;
float omregningsFaktor;

 void udskrivInfo(){
      println("Jeg hedder " + navn + " og er " + alderIMenneskeAar() + " år i menneskeår!");
  }
  
    float alderIMenneskeAar(){
    return omregningsFaktor*alder;
  }

}

class Kat extends Dyr{ 

  
  Kat(String navn, float alder,float omregningsFaktor){
    this.alder = alder;
    this.navn  = navn;
    this.omregningsFaktor = omregningsFaktor;
  }
  
   
}

class Hund extends Dyr{

  
  Hund(String navn, float alder,float omregningsFaktor){
    this.alder = alder;
    this.navn  = navn;
     this.omregningsFaktor = omregningsFaktor;
  }
  

  
 
}
