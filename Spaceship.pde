class Spaceship extends Floater {
    // Constructor to initialize the spaceship
    Spaceship() {
        corners = 3; // Triangle shape
        xCorners = new int[]{20, -10, -10}; // Define x-coordinates for the triangle corners
        yCorners = new int[]{0, 10, -10};  // Define y-coordinates for the triangle corners
        myColor = color(255); // White color
        myCenterX = 250; // Initial X position (center of 500x500 screen)
        myCenterY = 250; // Initial Y position (center of 500x500 screen)
        myXspeed = 0; // Initial speed
        myYspeed = 0; 
        myPointDirection = 0; // Initially pointing to the right
    }

    // Hyperspace method
    public void hyperspace() {
        myCenterX = Math.random() * 500; // Teleport to a random X position within the 500x500 screen
        myCenterY = Math.random() * 500; // Teleport to a random Y position within the 500x500 screen
        myXspeed = 0; // Reset speed to 0
        myYspeed = 0; 
        myPointDirection = Math.random() * 360; // Point in a random direction (0 to 360 degrees)
    }
}
