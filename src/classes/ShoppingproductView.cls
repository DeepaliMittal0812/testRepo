public class ShoppingproductView {
	public  String data1{get;set;}
	string  value;
    
    public ShoppingproductView(){
         value = apexpages.currentPage().getParameters().get('id');
    }   
  	
    public List<SelectOption> getData() {
    	List<ShoppingProduct__c> splist1 =[select category__c from ShoppingProduct__c ];
        List<SelectOption> splist = new List<SelectOption>();
        
        for(integer i=0;i<splist1.size();i++){
        	shoppingproduct__c sp=splist1[i];
     		String name = sp.category__c;   
        	splist.add(new SelectOption(name,name));
    	}
        return splist;
    }

 
  	public pageReference openPage(){
    	pageReference pg = new pageReference('/apex/showProducts?id='+data1);
        pg.setRedirect(true);
        return pg;
    }       
}