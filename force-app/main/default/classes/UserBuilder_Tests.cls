

@IsTest
public with sharing class UserBuilder_Tests {

    @TestSetup
    static void setup(){
        Account account = new Account(Name = 'Test Account', Admin_Only__c = 'test');
        insert account;
    }

    private static List<Account> accountSelector(){
        return [SELECT Id, Admin_Only__c
        FROM  Account
        WITH SECURITY_ENFORCED LIMIT 1];
    }

    @IsTest
    static void itShouldUpdate() {
        //given

        //when
        System.runAs(new UserDirector(New UserBuilder.Admin()).build()) {

            //then
            System.assert(accountSelector()[0].Admin_Only__c == 'test', 'Admin users should have access');
        }
    }

    @IsTest
    static void itShouldNotUpdate() {
        //given
        //when
        System.runAs(UserFactory.getInstance(UserTypes.STANDARD)) {
            try {
                accountSelector();
                System.assert(true == false, 'We should never get here');
            } catch (Exception e) {
              //then
                System.assert(e instanceof QueryException, 'It should throw a query exception');
            }
        }
    }
}