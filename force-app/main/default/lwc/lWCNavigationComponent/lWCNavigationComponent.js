import { LightningElement, api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
export default class LWCNavigationComponent extends NavigationMixin(LightningElement) {

    @api recordId;

    navigateToNewAccountPage() {
        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Account',
                actionName: 'new'
            }
        });
    }

    navigateToAccountRecentList() {
        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Account',
                actionName: 'list'
            },
            state: {
                filterName: 'Recent'
            }
        });

    }

    navigateToHomePage() {
        this[NavigationMixin.Navigate]({
            type: 'standard__namedPage',
            attributes: {
                pageName: 'home'
            },
          
        });

    }

    navigateToCompo1(){
         this[NavigationMixin.Navigate]({
            type: 'standard__component',
            //this aura component should implement lightning:isUrlAddressable
            attributes: {
                componentName: 'c__Componenent1'
            },
          
        });
    }

    navigateToWebPage(){
            this[NavigationMixin.Navigate]({
            type: 'standard__webPage',
            //this aura component should implement lightning:isUrlAddressable
            attributes: {
                'url': 'https://www.google.com'
            },
          
        });
    }

}