public class AccountTriggerHandler {

    public static void CreateAccounts(List<Account> acc){
        
        for(account a : acc){
            if(a.ShippingState != a.BillingState){
                system.debug('hello;');
              a.ShippingState = a.BillingState;
            }
        }
    }
}