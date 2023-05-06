public class DailyStandupMeeting {
  public static String printChargeReceipt(String memberName,Integer daysAbsent) {
    Double totalCharge = 0;
    for (Integer i = 0; i < daysAbsent; i++) {
      totalCharge += 100;
    }
    //instead of for loop, we can directly multiply daysAbsent by 100 but this is just for fun :)
    return memberName + ', you have been charged $' + totalCharge;
  }
}
