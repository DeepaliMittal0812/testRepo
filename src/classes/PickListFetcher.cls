public class PickListFetcher {

 	public  static String data1{get;set;}
    public  String ctyname;//{get;set;}
    public  integer cost;//{get;set;}
	String  value;
    String name;
    public PickListFetcher(){
    	system.debug('constructor called plf');
        value = apexpages.currentPage().getParameters().get('id');
    }   

 	public  List<ShoppingProduct__c>  getShowProducts(){
    	list<ShoppingProduct__c> splist =[select name,cost__c,category__c from ShoppingProduct__c where category__c=:value];
        return splist;
    }
  	
    public pageReference opencheckoutPage() {
    	pageReference pg = new pageReference('/apex/checkout');
        pg.setRedirect(true);
        return pg;
    }  
    
    public  Void insertData(){
        

                ctyname= apexpages.currentPage().getParameters().get('ctyname');
        system.debug(ctyname);
        list<cart__c> splist =[select name,quantity__c from cart__c where name=:ctyname];
        system.debug('@@@@'+splist +'   '+ ctyname);
      
        if(splist.size()==0){
            system.debug('in if');
        Integer cos=Integer.valueOf(apexpages.currentPage().getParameters().get('cost'));
        insert (new cart__C(name=ctyname,cost__c=cos,Quantity__c=1));
        }
        else
        {
             try {      
    cart__c cartToUpdate=  [SELECT name,quantity__c FROM cart__c WHERE Name=:ctyname LIMIT 1];

    cartToUpdate.Quantity__c = cartToUpdate.Quantity__c+1;

    update cartToUpdate;
} catch(DmlException e) {
    System.debug('An unexpected error has occurred: ' + e.getMessage());
}


        }
    }
}