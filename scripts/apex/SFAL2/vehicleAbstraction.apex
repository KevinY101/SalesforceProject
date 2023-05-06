//abstraction
Car car = new Car();
car.run();
car.start();
car.stop();

Bus bus = new Bus();
bus.run();
bus.start();
bus.stop();

//polymorphism
Vehicle v1 = new Car();
v1.start();
v1.run();

Vehicle v2 = new Bus();
v2.start();
v2.run();








