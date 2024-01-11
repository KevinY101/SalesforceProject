public with sharing class CustomMath {
  public static Integer factorial(Integer num) {
    Integer result =1;
    if (num == 0) {
      result = 1;
    } else if (num < 0) {
      result = null;
      System.debug('Input Num should not be a negative num');
    } else {
      for (Integer i = num; i >= 1; i--) {
        result *= i;
      }
    }

    return result;
  }
}
