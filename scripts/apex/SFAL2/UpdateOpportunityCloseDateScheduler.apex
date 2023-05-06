// Schedule the UpdateOpportunityCloseDate class to run at the end of each month at 23:59 PM

UpdateOpportunityCloseDate scheduler = new UpdateOpportunityCloseDate();

// Schedule to run at 11:59 PM on the last day of each month
String scheduleExpression = '00 59 23 L * ?';

System.schedule('UpdateOpportunityCloseDate', scheduleExpression, scheduler);

