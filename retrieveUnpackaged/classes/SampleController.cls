public class SampleController {
    public String myString;
    public String getMyString() {
        return 'getmyString';
    }
    
    public String getStringMethod2() {
        
        Case.SObjectType.getDescribe().getRecordTypeInfos();
        if (myString == null)
            myString = 'Method2';
        return myString;
    }
    //{!myString}, {!StringMethod1}, {!StringMethod2}, {!myString}
}