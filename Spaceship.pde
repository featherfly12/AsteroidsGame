// Spaceship class extending Floater
class Spaceship extends Floater {
    // Constructor to initialize the spaceship
    Spaceship() {
        corners = 3; // Triangle shape
        xCorners = new int[]{20, -10, -10}; // Define x-coordinates for the triangle corners
        yCorners = new int[]{0, 10, -10};  // Define y-coordinates for the triangle corners
        myColor = color(255); // White color
        myCenterX = width / 2; // Start in the center of the screen
        myCenterY = height / 2;
        myXspeed = 0;
        myYspeed = 0;
        myPointDirection = 0; // Initially pointing to the right
    }

    // Hyperspace method
    public void hyperspace() {
        myCenterX = random(width); // Teleport to a random X position
        myCenterY = random(height); // Teleport to a random Y position
        myXspeed = 0; // Reset speed to 0
        myYspeed = 0;
        myPointDirection = random(360); // Point in a random direction (0 to 360 degrees)
    }
}
