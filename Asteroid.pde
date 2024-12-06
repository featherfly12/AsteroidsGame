class Asteroid extends Floater {
    private double rotationSpeed; 

    Asteroid() {
        corners = 6; // Asteroids are hexagonal
        xCorners = new int[corners];
        yCorners = new int[corners];

        for (int i = 0; i < corners; i++) {
            double angle = Math.toRadians(60 * i); 
            double radius = 10 + (Math.random() * 10); 
            xCorners[i] = (int) (radius * Math.cos(angle));
            yCorners[i] = (int) (radius * Math.sin(angle));
        }

        myColor = color(150); 
        myCenterX = Math.random() * width; 
        myCenterY = Math.random() * height; 
        myXspeed = -2 + (Math.random() * 4); 
        myYspeed = -2 + (Math.random() * 4); 
        myPointDirection = Math.random() * 360; 
        rotationSpeed = -2 + (Math.random() * 4); 
    }

    @Override
    public void move() {
        super.move(); 
        myPointDirection += rotationSpeed; // Rotate the asteroid
    }

    public double getCenterX() {
        return myCenterX;
    }

    public double getCenterY() {
        return myCenterY;
    }
}
