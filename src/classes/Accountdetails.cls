public class Accountdetails {
    public boolean bool{get;set;}
        public Accountdetails(ApexPages.StandardController stdCtrl){
            system.debug('first');
            bool=false;
			system.debug('ab1231');
        }
}