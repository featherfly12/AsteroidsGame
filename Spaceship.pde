class Spaceship extends Floater {
    Spaceship() {
        corners = 3; // Triangle shape
        xCorners = new int[]{20, -10, -10}; 
        yCorners = new int[]{0, 10, -10};  
        myColor = color(255); 
        myCenterX = width / 2; 
        myCenterY = height / 2;
        myXspeed = 0;
        myYspeed = 0;
        myPointDirection = 0; 
    }

    // Hyperspace method
    public void hyperspace() {
        myCenterX = random(width); 
        myCenterY = random(height);
        myXspeed = 0; // Reset speed to 0
        myYspeed = 0;
        myPointDirection = random(360); 
    }
}
