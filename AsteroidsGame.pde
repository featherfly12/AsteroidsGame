Spaceship bob = new Spaceship(); 
Star[] sue;

public void setup() {
    size(500, 500); 
    sue = new Star[1000];
    for(int i = 0;i<sue.length;i++){
      sue[i]=new Star();
    }
}

public void draw() {
    background(0); 
    bob.move();    
    bob.show();   
    for(int i = 0;i<sue.length;i++)
    sue[i].show();
}

public void keyPressed() {
    if (key == 'w' || key == 'W') {
        bob.accelerate(0.4);
    } else if (key == 's' || key == 'S') {
        bob.accelerate(-0.4); 
    } else if (key == 'a' || key == 'A') {
        bob.turn(-5);
    } else if (key == 'd' || key == 'D') {
        bob.turn(5);
    } else if (key == ' ') {
        bob.hyperspace(); 
    }

}
