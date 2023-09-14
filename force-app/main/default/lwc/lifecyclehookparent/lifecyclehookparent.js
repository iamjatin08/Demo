import { LightningElement ,api} from 'lwc';

 

export default class Lifecycle extends LightningElement {

   @api recordid;
   constructor(){

     super();
      alert('parent constructed');
     console.log('parent constructed');

   }

   connectedCallback(){
    alert('parent connectedcallback');
    console.log('parent connectedcallback');

   }

   disconnectedCallback(){
    alert('parent disconnected');
    console.log('parent disconnected');

   }

   renderedCallback(){
    alert('parent rendered');
    console.log('parent rendered');

   }

   errorCallback(){
    alert('parent error');
    console.log('parent error');

   }

 

}