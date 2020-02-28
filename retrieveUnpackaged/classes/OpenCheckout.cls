public class OpenCheckout {
String ctyname;      
    
    public  List<cart__C> getchecker(){
      List<cart__C> splist =[select name,cost__c,quantity__c,total__c from cart__C];
      //  List<SelectOption> splist = new List<SelectOption>();

        
//	List<CartPojo> cp=new list<CartPojo>();
			     
             return splist;
    }
    
    public void delCart(){
          
		      ctyname=apexpages.currentPage().getParameters().get('ctyname');
        cart__c cart = [SELECT Id, Name,quantity__c,total__c FROM cart__c

                         WHERE Name=:ctyname limit 1];
        
        if(cart.quantity__c==1){
delete cart;
    }
        else{
            try {  
          
    cart__c cartToUpdate=  [SELECT name,quantity__c,total__c FROM cart__c WHERE Name=:ctyname LIMIT 1];

    cartToUpdate.Quantity__c = cartToUpdate.Quantity__c-1;

    update cartToUpdate;
} catch(DmlException e) {
    System.debug('An unexpected error has occurred: ' + e.getMessage());
}


        }
    
}
}