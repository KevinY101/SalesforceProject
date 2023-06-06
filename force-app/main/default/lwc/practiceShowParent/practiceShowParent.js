/*
Coding Task : Show Parent Account
1.Create a LWC component to show Account Readonly form on Opportunity Record Page. 
the component should be available for RecordPage
2.it should have property for accId (for account) ,  reobjectApiName , recordId (for opp)
3. you should use getRecord wire adapter function to get full opportunity record object
import fields , opportunity name , opportunity account Id, import Account Object (since the form is for account not opp) , import Account Name, Account AnnualRevenue , Account Type and any other fields you want.
4. use getter function to extract accountId field value
5. conditionally display this form according to parent account available or not.
*/
import { getFieldValue, getRecord } from "lightning/uiRecordApi";
import { LightningElement, api, wire } from "lwc";
import OPP_ACCOUNT_ID from "@salesforce/schema/Opportunity.AccountId";
import ACCOUNT_OBJECT from "@salesforce/schema/Account"
import ACC_NAME_FIELD from "@salesforce/schema/Account.Name"
import ACC_REVENUE_FIELD from "@salesforce/schema/Account.AnnualRevenue"

export default class PracticeShowParent extends LightningElement {
	@api recordId;
	
	accObjectApiName = ACCOUNT_OBJECT;
	fields = [ACC_NAME_FIELD,ACC_REVENUE_FIELD];

	accId; 

	@wire(getRecord, { recordId: '$recordId', fields: [OPP_ACCOUNT_ID] })
	wiredOpp({ data, error}) {
		if (data) {
			this.accId = getFieldValue(data, OPP_ACCOUNT_ID)
		} else if (error) {
			// or show it on the page
			console.log(error.body.message);
			this.accId = undefined; 
		}
	} 

}