class Bevoelkerung {
  Person[] personen;
  
  Bevoelkerung(int groesse) {
    personen = new Person[groesse];
    for(int i = 0; i < groesse; i++){
      personen[i] = new Person();
    }
    personen[0].infizieren();
  }
  
  void zeichnen(){
    for(int i = 0; i < personen.length; i++){
      personen[i].zeichnen();
    }
  }
  
  
  void bewegen(){
    for(int i = 0; i < personen.length; i++){
      personen[i].bewegen();
    }
  }
  
  void heilen(){
    for(int i = 0; i < personen.length; i++){
      personen[i].heilen();
    }
  }
  
  
   void kontakt(){
    for(int i = 0; i < personen.length; i++){
      for(int j = i + 1; j < personen.length; j++){
        personen[i].kontakt(personen[j]);
      }
    }
  }
  
  void kontakt1(){
    for(int i = 0; i < personen.length; i++){
      for(int j = i + 1; j < personen.length; j++){
        personen[i].kontakt(personen[j]);
      }
    }
  }
  
  void kontakt2(){
    for(int i = 0; i < personen.length; i++){
      for(int j = i + 1; j < personen.length; j++){
        personen[i].kontakt(personen[j]);
      }
    }
  }
  
  void kontakt3(){
    for(int i = 0; i < personen.length; i++){
      for(int j = i + 1; j < personen.length; j++){
        personen[i].kontakt(personen[j]);
      }
    }
  }
  
  void kontakt4(){
    for(int i = 0; i < personen.length; i++){
      for(int j = i + 1; j < personen.length; j++){
        personen[i].kontakt(personen[j]);
      }
    }
  }
 
  void zeichnenStatus(){
    for(Person p: personen){
      if(p.status == krank){
        infected++;
      }else if(p.status == gesund){
        healthy++;
      }
    }
    PFont f = createFont("Geargia", 10);
    fill(0);
    textAlign(LEFT, TOP);
    textFont(f);
    textSize(10);
     text("Antworttext: " , 50, 10);
     text("Nach wie vielen draw-Loops jeweils 100% der Gesunden infiziert waren. " , 50, 25);
    text("Draw-Loops: " + healthy, 50, 45);
    text("Die Anzahl der Loops erhöht sich, wenn die Entfernung zunimmt. Da mit dem Abstand sind immer weniger leute infiziert. Da heißt, um 100 % der Gesunden zu haben, sollte der Draw Loops mehr angerufen werden. ", 50, 65);
    text(" Aufgabe 3 : Mehr die Personen durch Impfungen immunisiert sind, desto geringer die Ausbreitung der Infektion ist. Die Ausbreitung ist deutlich verzögert, wenn 70 % der Personen durch Impfungen immunisiert sind", 50, 80);
    
  }
  
}
