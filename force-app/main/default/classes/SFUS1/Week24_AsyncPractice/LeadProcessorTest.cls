@isTest
public class LeadProcessorTest {
    
    @testSetup
    static void setup(){
        
        List<Lead> leads = new List <Lead>();
        
        for (Integer i=0 ; i<200 ; i++){
            leads.add(new Lead(FirstName = 'Test'+ i, LastName = 'Last', Company = 'ZZZ'));
        }
        insert leads;
        
    }
    
    @isTest
    
    static void test(){
        
        Test.startTest();
        
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        
        Test.stopTest();
        
        List<Lead> updatedLeads = [SELECT FirstName, LeadSource FROM Lead WHERE FirstName LIKE 'Test%'];
        
        Assert.areEqual('Dreamforce', updatedLeads[0].LeadSource);
        Assert.areEqual('Dreamforce', updatedLeads[199].LeadSource);

    }
	
}