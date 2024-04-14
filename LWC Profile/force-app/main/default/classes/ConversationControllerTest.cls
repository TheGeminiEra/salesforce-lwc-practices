@IsTest
public class ConversationControllerTest {
    
	@isTest
    static void testMakeConversationInvalidTo()
    {
        Boolean testPass = false;
        String fromNumber = '1234567890';
        String toNumber = '1';

      //  List<ConversationController.ConversationWrapper> test =    ConversationController.getConversations();
       // System.assertEquals(0, test.size());
        try {
            ConversationController.makeConversation(toNumber, '0');
        } catch (AuraHandledException e) {
            System.debug(e.getMessage());
            System.debug(e.getTypeName());
            System.debug('XXXXXXXXXx');
             System.debug(e.getMessage());
            System.debug('XX: '+ e.getStackTraceString());
            System.assert(e.getMessage().contains('ToNumber length invalid'));
            
            testPass = true;
        }
    }
}