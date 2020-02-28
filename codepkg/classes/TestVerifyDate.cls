@isTest
public class TestVerifyDate {

    @istest
    static void CheckDates1(){ 
        date d1=system.today().adddays(7);
       Date d=verifydate.checkdates( system.today() ,system.today().adddays(7));
        
      System.assertEquals(d,d1);
    }
  @istest
    static void CheckDates2(){ 
        date d1=system.today().adddays(42);
             date dateField=system.today();
    Date lastDayOfMonth = dateField.addMonths(1).toStartofMonth().addDays(-1);
       Date d=verifydate.checkdates( system.today() ,d1);
        
      System.assertEquals(d,lastDayOfMonth);
    }
    
   
}