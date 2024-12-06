Spaceship bob = new Spaceship(); // Create a new spaceship
Star[] sue;

public void setup() {
    size(500, 500); // Set up the screen size
    sue = new Star[1000];
    for(int i = 0;i<sue.length;i++){
      sue[i]=new Star();
    }
}

public void draw() {
    background(0); // Black background
    bob.move();    // Update the spaceship's position
    bob.show();    // Display the spaceship
    for(int i = 0;i<sue.length;i++)
    sue[i].show();
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
