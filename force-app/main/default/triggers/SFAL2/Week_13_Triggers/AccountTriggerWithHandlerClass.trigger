trigger AccountTriggerWithHandlerClass on Account (before insert, after insert) {

    if (Trigger.isAfter && Trigger.isInsert){

        AccountTriggerHandler.createContactWithAccountName(Trigger.new);

    }

}