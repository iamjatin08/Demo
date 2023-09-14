import { LightningElement , api} from 'lwc';

const columns = [
    {label: 'ACCOUNT NAME' , fieldName:'name'},
]

export default class Accountresults extends LightningElement {
    @api searches=[];
    columns = columns;
}