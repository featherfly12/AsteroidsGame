Spaceship bob;                 // The spaceship
Star[] sue;                    // Array for stars
ArrayList<Asteroid> asteroids; // List of asteroids

void setup() {
    size(500, 500); // Screen size
    bob = new Spaceship(); // Create a new spaceship

    // Create stars
    sue = new Star[1000];
    for (int i = 0; i < sue.length; i++) {
        sue[i] = new Star();
    }

    // Create asteroids
    asteroids = new ArrayList<Asteroid>();
    for (int i = 0; i < 10; i++) {
        asteroids.add(new Asteroid());
    }
}

void draw() {
    background(0); // Black background

    // Move and display the spaceship
    bob.move();
    bob.show();

    // Display stars
    for (Star s : sue) {
        s.show();
    }

    // Move and display asteroids, check collisions
    for (int i = asteroids.size() - 1; i >= 0; i--) { // Iterate backward for safe removal
        Asteroid asteroid = asteroids.get(i);
        float distance = dist((float) bob.myCenterX, (float) bob.myCenterY, 
                              (float) asteroid.getCenterX(), (float) asteroid.getCenterY());
        
        if (distance < 20) { // Collision threshold
            asteroids.remove(i); // Remove asteroid on collision
        } else {
            asteroid.move();
            asteroid.show();
        }
    }
}

void keyPressed() {
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
