@isTest
public class EmployeeLeaveCtrl {

    public testmethod static void testMethod1(){
        //employee creation
        Employee__c e = new Employee__c();
        e.Name = 'test';
        e.Joining_Date__c = system.today();
        insert e;
        
        //Employee__c ee = [select id,Joining_Date__c from Employee__c where Id =: e.Id];
        
        e.Joining_Date__c = system.today()-3;
        update e;
        
        
        EmployeeLeave emp = new EmployeeLeave();
        EmployeeLeave.calculateLeave();
        emp.leaveDay = 10;
        emp.emp = e;                          
    }
}