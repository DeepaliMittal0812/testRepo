public class ContactSearch {
    public static list<Contact> searchForContacts(String lName,String postalcode){
        contact[] con=[select contact.id,name,lastname,firstname from contact where lastname=:lname and MailingPostalCode=:postalcode];
        system.debug('www' +con);
        return con;
    }
}