import { api, LightningElement, track } from 'lwc';

export default class DecoratorChEx extends LightningElement {
   
   @api 
   location; 

    @track
    user={
        firstName:'Munna',
        lastName:'Tiger'
    };

    updateUser(){
        this.user.firstName='AK';
    }
}