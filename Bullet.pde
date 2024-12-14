class Bullet extends Floater {
    // Constructor to initialize the bullet based on the spaceship
    Bullet(Spaceship theShip) {
        // Set initial position to the ship's position
        myCenterX = theShip.myCenterX;
        myCenterY = theShip.myCenterY;

        // Set speed to the ship's speed
        myXspeed = theShip.myXspeed;
        myYspeed = theShip.myYspeed;

        // Set direction to the ship's direction
        myPointDirection = theShip.myPointDirection;

        // Accelerate the bullet for an extra push
        accelerate(6.0);

        // Circular bullets (no corners needed)
        corners = 0;
    }

    // Override the show() method for circular bullets
    @Override
    public void show() {
        fill(255, 255, 0); // Yellow color for the bullet
        noStroke();
        ellipse((float) myCenterX, (float) myCenterY, 10, 10); // Draw a circle for the bullet
    }
}
