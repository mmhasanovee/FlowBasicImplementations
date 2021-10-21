public with sharing class CatClass {
    @InvocableMethod(label='Catto' description='cat detials')
    public static void methodName(List<catWrapper> cw) {
        //List<Id> ids = cw.get(0).Id;
        Id cId = cw.get(0).catId;
        String cColor = cw.get(0).catColor;
        String cOwnerName = cw.get(0).catOwnerName;
        System.debug(cId+''+cColor+''+cOwnerName);
    }
    public class catWrapper{
        @InvocableVariable(required=true)
        public Id catId;
        
        @InvocableVariable(required=true)
        public String catOwnerName;
        
        @InvocableVariable(required=true)
        public String catColor;
    }
}
