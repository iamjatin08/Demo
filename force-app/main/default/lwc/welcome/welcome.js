import { LightningElement , api, wire} from 'lwc';
import { getRecord,getFieldValue } from 'lightning/uiRecordApi';

import NAME_FIELD from '@salesforce/schema/Account.Name'

export default class Welcome extends LightningElement {
    @api recordId;

    @wire(getRecord,{recordId : '$recordId', fields:[NAME_FIELD]})
    record;


    get name(){
        return this.record.data ? getFieldValue(this.record.data,NAME_FIELD) : 'Hello EVERYONE';
    }
}