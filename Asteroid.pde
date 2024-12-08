class Asteroid extends Floater {
    private double rotationSpeed;

    Asteroid() {
        corners = 6;
        xCorners = new int[] {-15, -10, 0, 10, 15, 0};
        yCorners = new int[] {0, -15, -10, -15, 0, 15};
        myColor = color(150); // Gray
        
        // Generate random initial position
        myCenterX = Math.random() * width; 
        myCenterY = Math.random() * height;

        // Generate random speed between -2 and 2
        myXspeed = (Math.random() * 4) - 2; 
        myYspeed = (Math.random() * 4) - 2;

        // Generate random direction (0 to 360 degrees)
        myPointDirection = Math.random() * 360; 

        // Generate random rotation speed between -2 and 2
        rotationSpeed = (Math.random() * 4) - 2; 
    }

    @Override
    public void move() {
        super.move();
        myPointDirection += rotationSpeed;
    }

    public double getCenterX() {
        return myCenterX;
    }

    public double getCenterY() {
        return myCenterY;
    }
}
