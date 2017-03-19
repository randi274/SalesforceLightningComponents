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
<<<<<<< HEAD
    
    @AuraEnabled
    public static List<Decimal> getAmts(){
        List<Decimal> amounts = new List<Decimal>();
        Decimal totalAmount = 0;
        Decimal totalCommission = 0;
        
        for(Opportunity opp : [SELECT Id, Name, Account.Name, Amount, Commission__c FROM Opportunity ORDER BY Commission__c DESC NULLS LAST Limit 5]){
            totalAmount += opp.Amount;
            totalCommission += opp.Commission__c;
        }
        
        amounts.add(totalAmount);
        amounts.add(totalCommission);
        
        return amounts;
        
    }
}
=======
}
>>>>>>> 10ac136b9e8c7f953aae1cea11793016d3e94d02
