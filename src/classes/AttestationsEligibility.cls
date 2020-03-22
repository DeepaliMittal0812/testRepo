public class AttestationsEligibility {

    public class AttestEligibilityWrapper{
         @AuraEnabled 
     public Map<String,String> mp{get; set;}
         @AuraEnabled 
        public String intro{get; set;}

        public AttestEligibilityWrapper(){
            
        }
    public AttestEligibilityWrapper(Map<String,String> mpParam,String introParam){
            this.mp = mpParam;
            this.intro = introParam;
        }
    }
    
    @Auraenabled
    public static AttestEligibilityWrapper AttestEligibility(){
        String data;

        AttestEligibility1__mdt ae = [Select id,filedata__c from AttestEligibility1__mdt where label='AttestEligibility_JSON1'];
        data = ae.filedata__c;
      AttestEligibilityWrapper aew = new AttestEligibilityWrapper();
      aew.mp  =  (Map<String,String>) JSON.deserialize(data, Map<String,String>.class);
          AttestEligibility1__mdt aeIntro = [Select id,filedata__c from AttestEligibility1__mdt where label='AttestEligibility_Intro1'];
			aew.intro=aeIntro.FileData__c;
        system.debug(aew.intro);
        return aew;
    }
    
    
}