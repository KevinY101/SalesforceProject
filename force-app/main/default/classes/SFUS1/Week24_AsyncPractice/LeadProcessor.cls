public class LeadProcessor implements Database.Batchable<sObject>, Database.Stateful {
  /*Create an Apex class that implements the Database.Batchable interface to update all Lead records in the org with a specific LeadSource.*/
  public Integer recordsProcessed = 0;

  // Collect the Lead records to be passed to execute
  public Database.QueryLocator start(Database.BatchableContext dbc) {
    return Database.getQueryLocator('SELECT Id, Name FROM Lead');
  }

  // Process each batch of records
  public void execute(Database.BatchableContext dbc, List<Lead> leads) {
    //--> each batch is passed into the list

    //for each Lead,  update the Leadsource to dreamforce
    for (Lead each : leads) {
      each.LeadSource = 'Dreamforce';
    }

    update leads;
    recordsProcessed += leads.size();
    System.debug('Records processed so far ' + recordsProcessed);
  }

  // Execute any post-processing operations
  public void finish(Database.BatchableContext dbc) {
    System.debug(recordsProcessed + ' total records processed.');
  }
}
