import { LightningElement } from 'lwc';

export default class App extends LightningElement {

   bike1 = {
        name : 'Electra X4',
        description : 'A sweet bike built for comfort.',
        category : 'Mountain',
        material : 'Steel',
        price : '$2,700',
        pictureUrl : 'https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/electrax4.jpg'
    }
    bike2 = {
        name : 'BMX Y9',
        description : 'Black and sweet bike built for comfort.',
        category : 'Mountain',
        material : 'Steel',
        price : '$5,400',
        pictureUrl : 'https://media.istockphoto.com/id/150901347/tr/vekt%C3%B6r/simplified-mountain-bike-silhouette.jpg?s=1024x1024&w=is&k=20&c=YDn3ho1ZWEfBP6mmJgGFI6ZCPqMz56yVOQ5yLaORrOI='
    }
   // simulate page load with forced 3 seconds wait 
   ready = false;
   // This is a lifecycle hook method that run right before the component added to html dom
   // we are using it here to add 3 second wait time before it's added to html dom
   connectedCallback() {
       // eslint-disable-next-line @lwc/lwc/no-async-operation
       setTimeout(() => {
           this.ready = true;
       }, 3000);
   }

}