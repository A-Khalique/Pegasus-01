import { LightningElement } from 'lwc';

export default class RenderingIfElse extends LightningElement {

    name = 'Munna Tiger';
    details ='Munna Is The Ceo And Founder of CODM'
    showDetails = false;
    actionButtonLabel = 'Show Details';

    toggleDetail(){
        this.showDetails=!this.showDetails;
        this.actionButtonLabel = this.showDetails ? 'Hide Details' : 'Show Details';
    }
}