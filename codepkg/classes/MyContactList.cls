public class MyContactList {

    public static List<Contact> contactList(){
        List<contact> conList = [select id, name,account.id from contact limit 3];
        return conList;
    }
}