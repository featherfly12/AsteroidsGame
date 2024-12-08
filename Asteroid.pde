class Asteroid extends Floater {
    private double rotationSpeed; // Speed of rotation

    // Constructor
    Asteroid() {
        corners = 6; // Asteroids are hexagonal by default
        xCorners = new int[]{-15, -10, 0, 10, 15, 0}; // Define x-coordinates
        yCorners = new int[]{0, -15, -10, -15, 0, 15}; // Define y-coordinates
        myColor = color(150); // Gray color for asteroids
        myCenterX = random(width); // Random initial X position
        myCenterY = random(height); // Random initial Y position
        myXspeed = random(-2, 2); // Random X speed
        myYspeed = random(-2, 2); // Random Y speed
        myPointDirection = random(360); // Random initial direction
        rotationSpeed = random(-2, 2); // Random rotation speed
    }

    // Override move method to include rotation
    @Override
    public void move() {
        super.move(); // Call inherited move method
        myPointDirection += rotationSpeed; // Rotate the asteroid
    }

    // Getter for myCenterX
    public double getCenterX() {
        return myCenterX;
    }

    // Getter for myCenterY
    public double getCenterY() {
        return myCenterY;
    }
}
