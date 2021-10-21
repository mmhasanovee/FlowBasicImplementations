public with sharing class ApexCalledFromFlow {
    @InvocableMethod(label='AccountNameChange' description='This method changes the name of the account')
    public static void changeAccName(List<Id> ids) {
        System.debug(ids);
        Account ac = [Select Id,Name From Account Where Id = : ids[0]];
        ac.name = ac.name + 'kekw';
        update ac;
    }
}


