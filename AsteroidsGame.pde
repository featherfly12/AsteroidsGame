Spaceship bob = new Spaceship(); // Create a new spaceship
Star[] sue;                      // Array for stars
ArrayList<Asteroid> asteroids;   // ArrayList for asteroids

public void setup() {
    size(500, 500); // Set up the screen size
    sue = new Star[1000];
    for (int i = 0; i < sue.length; i++) {
        sue[i] = new Star(); // Initialize stars
    }
    
    asteroids = new ArrayList<Asteroid>(); // Initialize the asteroid ArrayList
    for (int i = 0; i < 10; i++) { // Add 10 asteroids to start
        asteroids.add(new Asteroid());
    }
}

public void draw() {
    background(0); // Black background
    bob.move();    // Update the spaceship's position
    bob.show();    // Display the spaceship
    
    for (int i = 0; i < sue.length; i++) {
        sue[i].show(); // Display stars
    }
    
    // Update and display each asteroid in the ArrayList
    for (int i = asteroids.size() - 1; i >= 0; i--) {
        Asteroid asteroid = asteroids.get(i);
        
        // Calculate the distance between the spaceship and the asteroid
        float distance = dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)asteroid.getCenterX(), (float)asteroid.getCenterY());
        
        // If the distance is less than 20, remove the asteroid (collision detected)
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
