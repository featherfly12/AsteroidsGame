Spaceship bob;                   // Create a new spaceship
Star[] sue;                      // Array for stars
ArrayList<Asteroid> asteroids;   // ArrayList for asteroids

void setup() {
    size(500, 500); // Set up the screen size
    bob = new Spaceship(); // Initialize the spaceship

    // Initialize stars
    sue = new Star[1000];
    for (int i = 0; i < sue.length; i++) {
        sue[i] = new Star();
    }

    // Initialize asteroids
    asteroids = new ArrayList<Asteroid>();
    for (int i = 0; i < 10; i++) {
        asteroids.add(new Asteroid());
    }
}

void draw() {
    background(0); // Black background

    // Update and display spaceship
    bob.move();
    bob.show();

    // Display stars
    for (int i = 0; i < sue.length; i++) {
        sue[i].show();
    }

    // Update and display asteroids
    for (Asteroid asteroid : asteroids) {
        asteroid.move();
        asteroid.show();
    }
}

void keyPressed() {
    // Spaceship controls
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

