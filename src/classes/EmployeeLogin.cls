public class EmployeeLogin {
    
    @Auraenabled
    public static String authenticateDetails(String empID,String password){
        
        try{
            Employee_login__c loginDetails = [Select id,password__c,name from Employee_login__c where name=:empID];
            
            if(empID!=null && loginDetails!=null){
                if(loginDetails.password__c == password && loginDetails.name == empID)
                {
                    return empID;
                }            
            }
        } catch (Exception e){
            return null;
        }
        return null;
    }
    
}