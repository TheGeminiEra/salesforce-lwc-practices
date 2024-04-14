import { LightningElement, track } from 'lwc';
import lwcpng from '@salesforce/resourceUrl/lwc';
// export const PROFILE_IMAGE = lwcpng;

export default class TodoApp extends LightningElement {
    lwcImage = lwcpng;
    TodoId = 2;
    @track todos = [
        { id: 1, taskDetails: 'Write Story' },
        { id: 2, taskDetails: 'Build Framework' }
    ];
   
    @track taskDetails;
    handleToDoChanges(event){
        this.taskDetails = event.target.value;
   
    }
    handleToDo(){
      this.TodoId = this.TodoId + 1;
        this.todos = [
            ...this.todos,
            {
                id: this.TodoId,
                taskDetails: this.taskDetails,
            }
        ];
    }
}