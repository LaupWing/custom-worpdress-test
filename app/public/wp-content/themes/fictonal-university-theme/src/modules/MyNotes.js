import $ from "jquery"

class MyNotes {
   constructor(){
      this.events()
   }

   events() {
      $(".delete-note").on("click", this.deleteNote.bind(this))
      console.log($(".delete-note"))
   }

   // Methods go here
   deleteNote(){
      alert("you clicked on the delete button")
   }
}

export default MyNotes