public class RandomContactFactory {

    public static list<Contact> generateRandomContacts(integer n,String name){
        list<contact> randomcnt=new list<contact>();
        for(integer i=0;i<n;i++){
            
            randomcnt.add(new contact(firstname='Test '+ i,lastname=name));
            
        }
        return randomcnt;
    }
}