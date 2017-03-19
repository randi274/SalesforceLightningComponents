public class multidimensionalArrays {
	@AuraEnabled
    public static List<List<Opportunity>> getOpps(){
        List<Opportunity> q1 = [SELECT Id, Name, Account.Name, Amount FROM Opportunity WHERE Account.Name = 'ABC Labs'];
		List<Opportunity> q2 = [SELECT Id, Name, Account.Name, Amount FROM Opportunity WHERE Account.Name = 'Acme Inc.'];
        
        List<List<Opportunity>> qList = new List<List<Opportunity>>();
        
        qList.add(q1);
        qList.add(q2);
        
        return qList;
        
    }
}