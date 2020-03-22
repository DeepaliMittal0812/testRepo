@isTest
Private class testaccount{
	@testSetup
	Static void Setup(){
	//Create 2 test accounts
	List<Account> testAccts = new List<Account>();
	for(Integer i=0; i<2; i++){
         testAccts.add(new Account( Name = 'MyTestAccount'+ i, Phone='333-878'+i));
}
Insert testAccts;
}
@isTest static void testMethod1(){
         Account acc = [Select Id,Phone From Account Where Name = 'MyTestAccount0' Limit 1];	     
    acc.Phone = '888-1515';
         Update acc;
}

@isTest static void testMethod2(){
       Account acc2 = [Select Id,Phone From Account Where Name = 'MyTestAccount1' Limit 1];	
    acc2.Phone = '999-1515';
         Update acc2;

   system.debug(schema.getGlobalDescribe().get('Account').getDescribe().
             fields.getmap ());
 /*system.debug(schema.describeSObjects(new String[] {'Account'}[0].fields.getMap()));*/
system.debug(SObjectType.Account.fields.getMap());
//system.debug(Account.sObjectType.getDescribe().fieldSet());

    
}

@isTest static void testMethod3(){
        Account acc0 = [Select Id, Phone From Account Where Name='MyTestAccount0' Limit 1];
       Account acc1 = [Select Id, Phone From Account Where Name='MyTestAccount1' Limit 1];
       System.debug('Account0.Phone='+acc0.Phone+', Account1.Phone='+acc1.Phone);
}


}