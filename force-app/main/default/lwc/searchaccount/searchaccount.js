import { LightningElement } from 'lwc';
import getActData from '@salesforce/apex/SearchAccount.getAllAccount'

export default class Searchaccount extends LightningElement {
    accountname;
    accountphone;
    billingstreet;
    billingcity;
    billingzipcode;

    handlename(event){
        this.accountname = event.target.value;
    }
    handlephone(event){
        this.accountphone = event.target.value;
    }
    handlestreet(event){
        this.billingstreet = event.target.value;
    }
    handlecity(event){
        this.billingcity = event.target.value;
    }
    handlezipcode(event){
        this.billingzipcode = event.target.value;
    }
    
    actionsearch(event){
        alert(this.accountname)
        getActData({actname:this.accountname}).
        then(result=>{this.dispatchEvent(new CustomEvent('mycustevent',{detail:result}))}).
        catch(error=>{console.log(error)});
    }
    
}