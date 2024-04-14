public class ConversationController {
	@AuraEnabled
    public static void makeConversation(String tonum, String objid)
    {
        if (tonum.length() != 10){
            AuraHandledException e = new AuraHandledException('');
            e.setMessage('ToNumber length invalid');
            system.debug(e);
            throw e;
            //throw new AuraHandledException('ToNumber length invalid.');
        }
    }
}