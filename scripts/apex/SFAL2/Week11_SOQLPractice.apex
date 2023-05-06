List<Contact> contactList = [
  SELECT LastName, Id, Email, Description
  FROM Contact
  ORDER BY LastName ASC NULLS FIRST
  LIMIT 10
];
System.debug(contactList.size());
//System.debug(contactList);
for (Contact each : contactList) {
  if (each.LastName == 'Barr') {
    System.debug(each);
  }
}
