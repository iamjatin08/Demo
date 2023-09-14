import { LightningElement } from 'lwc';
export default class Trackimplementation extends LightningElement {

    name="";
    handler(event){
        this.name = event.target.value;
    }
}