# Create a Case Datatable

to display 5 cases in certain status, make it available on app page , allow the app page to provide case status

1. Create apex class called `CaseController`

   1. create a method inside `get5CasesByStatus`
   2. accept one param `statusParam`
   3. return 5 cases that match criteria with below fields

   - CaseNumber
   - Subject
   - Priority
   - Status

2. Create lwc component with name `caseTable`

   1. in your `xml` provide property with type String name `selectedStatus`
      - possible values using data source
        - Closed, New, Working, Escalated
   2. in your `js`

      - observe `@api selectedStatus` already generated
      - provide `datatable` columns according to the doc in columns property
      - wire the result of `get5CasesByStatus` method into a property called `myCases`

   3. in your `html`
      - create a card with div
      - conditionally display below table
      - add `lightning-datatable` base component
      - and provide relevant attribute values
      - conditionally display error panel

3. drag and drop this into app page twice
   1. first one ,case status select `Closed`
   2. second one, case status select `New`

4. add action buttons to the table for `view`, `edit` , `delete` 