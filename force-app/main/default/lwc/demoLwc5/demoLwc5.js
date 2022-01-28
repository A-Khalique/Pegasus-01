import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
export default class demoLwc5 extends NavigationMixin(LightningElement) {

    handleButtonClick(){
        this[NavigationMixin.Navigate]({
            type:"standard__objectPage",
            attributes: {
                objectApiName:"Contact",
                actionName:"list"
            }
        });
    }
}

