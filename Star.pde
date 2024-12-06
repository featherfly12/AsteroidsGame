class Star {
    private double myX;
    private double myY;

    public Star() {
        this.myX = Math.random() * 500;
        this.myY = Math.random() * 500;
    }

    public double getMyX() {
        return myX;
    }

    public void setMyX(double myX) {
        this.myX = myX;
    }

    public double getMyY() {
        return myY;
    }

    public void setMyY(double myY) {
        this.myY = myY;
    }

    public void show() {
        fill(255); 
        ellipse((float) myX, (float) myY, 1, 1);
    }
}
