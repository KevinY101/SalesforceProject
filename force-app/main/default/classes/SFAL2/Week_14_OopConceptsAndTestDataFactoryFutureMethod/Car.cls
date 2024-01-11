public with sharing class Car extends Vehicle {


  public override void start() {
    System.debug('Starting car...');
  }

  public override void stop() {
    System.debug('Stopping car...');
  }
}
