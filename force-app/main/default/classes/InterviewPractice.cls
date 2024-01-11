public with sharing class InterviewPractice {
  public static void createCandidate(String name, Integer experience) {
    Date intDate = Date.today();
    Candidate__c candy = new Candidate__c(
      Name = name,
      experience__c = experience,
      Interview_Date__c = intDate
    );
    insert candy;
  }

  public static List<String> searchExperience(Integer experience) {
    List<Candidate__c> experiencedCandidates = [
      SELECT Name
      FROM Candidate__c
      WHERE experience__c > :experience
    ];
    List<String> candidateNames = new List<String>();
    for (Candidate__c each : experiencedCandidates) {
      candidateNames.add(each.Name);
    }

    return candidateNames;
  }

  public static void createCase(String subject, String description) {
    Case case = new Case();
    case.Subject = subject;
    case.Description = description;
    try {
      insert case;
    } catch (Exception e) {
      System.debug('Error creating case:' + e.getMessage());
    }
  }
  public static List<Id> searchRecentCases() {
    Date lastWeek = Date.today() - 7;
    List<Case> recentCases = [
      SELECT Id
      FROM Case
      WHERE CreatedDate < :lastWeek
    ];
    List<Id> caseIds = new List<Id>();
    for (Case each : recentCases) {
      caseIds.add(each.Id);
    }
    return caseIds;
  }
}
