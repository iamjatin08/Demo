import { LightningElement ,api} from 'lwc';

 

export default class Lifecyclechild extends LightningElement {

   @api objectapiname;

   @api parentrecordid;

   constructor(){

     super();

     console.log('child contructed')

   }

   connectedCallback(){

    console.log('child connectedcallback')

   }

   disconnectedCallback(){

    console.log('child disconnected')

   }

   renderedCallback(){

    console.log('child rendered')

   }

   errorCallback(){

    console.log('child error')

   }

 

}