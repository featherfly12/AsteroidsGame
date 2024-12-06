class Asteroid extends Floater {
    private double rotationSpeed; // Speed of rotation

    // Constructor
    Asteroid() {
        corners = 6; // Asteroids are hexagonal
        xCorners = new int[corners];
        yCorners = new int[corners];

        // Randomize the distance of each corner from the center
        for (int i = 0; i < corners; i++) {
            double angle = Math.toRadians(60 * i); // Divide 360 degrees into 6 corners (hexagon)
            double radius = 10 + (Math.random() * 10); // Random radius between 10 and 20
            xCorners[i] = (int) (radius * Math.cos(angle));
            yCorners[i] = (int) (radius * Math.sin(angle));
        }

        myColor = color(150); // Gray color for asteroids
        myCenterX = Math.random() * width; // Random initial X position
        myCenterY = Math.random() * height; // Random initial Y position
        myXspeed = -2 + (Math.random() * 4); // Random X speed between -2 and 2
        myYspeed = -2 + (Math.random() * 4); // Random Y speed between -2 and 2
        myPointDirection = Math.random() * 360; // Random initial direction
        rotationSpeed = -2 + (Math.random() * 4); // Random rotation speed between -2 and 2
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
