Spaceship bob = new Spaceship(); 
Star[] sue;                      
ArrayList<Asteroid> asteroids;  

public void setup() {
    size(500, 500); 
    sue = new Star[1000];
    for (int i = 0; i < sue.length; i++) {
        sue[i] = new Star(); 
    }
    
    asteroids = new ArrayList<Asteroid>(); 
    for (int i = 0; i < 10; i++) { 
        asteroids.add(new Asteroid());
    }
}

public void draw() {
    background(0); 
    bob.move();    
    bob.show();    
    
    for (int i = 0; i < sue.length; i++) {
        sue[i].show(); 
    }
    
    for (int i = asteroids.size() - 1; i >= 0; i--) {
        Asteroid asteroid = asteroids.get(i);
        
        float distance = dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)asteroid.getCenterX(), (float)asteroid.getCenterY());
        
        if (distance < 20) {
            asteroids.remove(i); // Remove the asteroid from the ArrayList
        } else {
            asteroid.move();  // Move the asteroid
            asteroid.show();  // Display the asteroid
        }
    }
}

public void keyPressed() {
    if (key == 'w' || key == 'W') {
        bob.accelerate(0.4); // Accelerate forward
    } else if (key == 's' || key == 'S') {
        bob.accelerate(-0.4); // Decelerate (reverse thrust)
    } else if (key == 'a' || key == 'A') {
        bob.turn(-5); // Turn left
    } else if (key == 'd' || key == 'D') {
        bob.turn(5); // Turn right
    } else if (key == ' ') {
        bob.hyperspace(); // Activate hyperspace when spacebar is pressed
    }
}
