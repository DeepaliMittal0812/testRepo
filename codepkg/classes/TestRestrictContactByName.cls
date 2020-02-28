@isTest
public class TestRestrictContactByName {

    @isTest static void testcontactName(){
        contact cnt = new Contact(lastname='INVALIDNAME');
        insert cnt;
        
        test.starttest();
        Database.SaveResult result = Database.insert(cnt, false);
        test.stopTest();
        
         System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "'+cnt.LastName+'" is not allowed for DML.',
                             result.getErrors()[0].getMessage());
    }
}