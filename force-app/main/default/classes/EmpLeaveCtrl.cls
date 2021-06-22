public with sharing class EmpLeaveCtrl {
    public EmpLeaveCtrl() {}

    public static Leave_Application__c getEmpLeave(){
        Leave_Application__c lv = new Leave_Application__c();
        return lv;
    }    
     public static void empcreation(){
         system.debug('---Method Call---');                  
     }
}
