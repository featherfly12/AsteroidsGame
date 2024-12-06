class Star {
    // Private fields
    private double myX;
    private double myY;

    // Constructor
    public Star() {
        this.myX = Math.random() * 500;
        this.myY = Math.random() * 500;
    }

    // Public getter for myX
    public double getMyX() {
        return myX;
    }

    // Public setter for myX
    public void setMyX(double myX) {
        this.myX = myX;
    }

    // Public getter for myY
    public double getMyY() {
        return myY;
    }

    // Public setter for myY
    public void setMyY(double myY) {
        this.myY = myY;
    }

    // Public method to display the star
    public void show() {
        fill(255); // Assuming this method is part of your graphics library
        ellipse((float) myX, (float) myY, 1, 1); // Assuming this method is part of your graphics library
    }
}
