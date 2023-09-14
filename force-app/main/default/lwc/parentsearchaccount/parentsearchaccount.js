import { LightningElement } from 'lwc';

export default class Parentsearchaccount extends LightningElement {
    searchess = [];
    handleevt(event){
        alert('In Parent Component');
        alert(event.detail);
        this.searchess = [];
        event.detail.forEach(x => {
            var accData = {
                id: x.Id,
                name: x.Name
            }
            this.searchess.push(accData);
        });
    }
}
