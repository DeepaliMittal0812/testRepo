public class ContactAndLeadSearch {

    public static List<List<SObject>> searchContactsAndLeads(String searchname){
        
        List<List< SObject>> alist=[find :searchname in name fields returning lead(FirstName,LastName), contact(FirstName,LastName) ];
        
        return alist;
    }
}