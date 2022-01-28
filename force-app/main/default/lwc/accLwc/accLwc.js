import { LightningElement ,wire } from 'lwc';
import queryAccByEmpNum from '@salesforce/apex/accListLwc1.queryAccByEmpNum';
export default class AccLwc extends LightningElement {
    numberOfEmployees = null;

    changeHandler(event){
        this.numberOfEmployees = event.detail.value ;
        }

        reset(){
            this.numberOfEmployees=null;
        }
        @wire(queryAccByEmpNum, {numberOfEmployees: '$numberOfEmployees'})
        accounts;
}