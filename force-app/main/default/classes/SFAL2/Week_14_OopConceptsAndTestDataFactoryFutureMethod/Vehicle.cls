public abstract class Vehicle {

    public Integer makeYear;
    public String model;
  public abstract void start();

  public abstract void stop();

  public void run() {
    System.debug('Vehicle is running');
  }
}
