import $ from 'jquery';

class MyNotes {
    constructor() {
       this.events();
    }

    events() {
        $(".delete-note").on("click", this.deleteNote)
    }

    //Methods go here
    deleteNote() {
        alert("You clicked Delete");
    }
}

export default MyNotes;