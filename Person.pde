final int gesund = 0;
final int krank = 1;
final int geheilt = 2;

final int Infektionszeit = 500;


int healthy = 0;
int infected = 0;

final color[] farbe = {
  color(174,239,252),
  color(224,54,64),
  color(117,59,189)
};

class Person{
  // kreisradius entspricht die Grösse ; hier mit r repräsentiert 
  float r,  distanz;
  
  // die Position des Individuums auf der x- und y-Achse
  float x, y;
  
  //die Geschwindigkeit des Individuums auf der x- und y-Achse
  float gx, gy;
  
  int status;
  int infektionszeit;
  
  Person() {
    r  = 5;
    x = random(width);
    y = random(100 + 2*r, height);
    float alpha = random(100);
    gx = cos(alpha);
    gy = sin(alpha);
    distanz = r + 4;
  }
  
  void zeichnen(){
    noStroke();
    fill(farbe[status]);
    ellipseMode(RADIUS);
    ellipse(x, y, r, r);
    stroke(255);
    noFill();
    ellipse(x, y, distanz, distanz);
    
  }
  
  void bewegen(){
    x += gx;
    y += gy;
    if(x < 0 || x > width){
      gx = -gx;
    }
    if(y < 100 + 2* r|| y > height){
      gy = -gy;
    }
  }
  
  void infizieren(){
    if(status == gesund){
      status = krank;
      infektionszeit = Infektionszeit;
    }
  }
  
   // Distanz = 0: 100% Infektübertragung
  void kontakt(Person person1){
    float d = dist(x, y, person1.x, person1.y);
    if(d <= r + person1.r){
      if(status == krank){
        person1.infizieren();
      }else if (person1.status == krank){
        infizieren();
      }
    }
  }
  
  // Distanz = 1: 80% Infektübertragung
  void kontakt1(Person person1){
    float d = dist(x, y, person1.x, person1.y);
    if(d < r + person1.r +1){
      if(status == krank){
        person1.infizieren();
      }else if (person1.status == krank){
        infizieren();
      }
    }
  }
  
  // Distanz = 2: 50% Infektübertragung
  void kontakt2(Person person1){
    float d = dist(x, y, person1.x, person1.y);
    if(d < r + person1.r + 2){
      if(status == krank){
        person1.infizieren();
      }else if (person1.status == krank){
        infizieren();
      }
    }
  }
  
  // Distanz = 3: 10% Infektübertragung
  void kontakt3(Person person1){
    float d = dist(x, y, person1.x, person1.y);
    if(d < r + person1.r + 3){
      if(status == krank){
        person1.infizieren();
      }else if (person1.status == krank){
        infizieren();
      }
    }
  }
  
  // Distanz = 4: 1% Infektübertragung
  void kontakt4(Person person1){
    float d = dist(x, y, person1.x, person1.y);
    if(d < r + person1.r +4){
      if(status == gesund){
        status = gesund;
      }else if (person1.status == krank){
        status = krank;
      }
    }
  }
  
  
   
  void heilen(){
    if(status == krank){
      infektionszeit--;
      if(infektionszeit == 0){
        status = geheilt;
      }
    }
  }
  
  
  
}
