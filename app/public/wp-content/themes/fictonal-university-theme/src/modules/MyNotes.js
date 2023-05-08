import $ from "jquery"

class MyNotes {
   constructor(){
      this.events()
   }

   events() {
      $(".delete-note").on("click", this.deleteNote.bind(this))
      $(".edit-note").on("click", this.editNote.bind(this))
   }

   // Methods go here
   deleteNote(event){
      var thisNote = $(event.target).parents("li")

      $.ajax({
         beforeSend: (xhr) => {
            xhr.setRequestHeader("X-WP-Nonce", universityData.nonce);
         },
         url: universityData.root_url + "/wp-json/wp/v2/note/" + thisNote.data("id"),
         type: "DELETE",
         success: (response) => {
            thisNote.slideUp()
            console.log("Congrats")
            console.log(response)
         },
         error: (response) => {
            console.log("Something went wrong")
            console.log(response)
         },
      })
   }

   editNote(event){
      var thisNote = $(event.target).parents("li")

      thisNote.find(".note-title-field, .note-body-field").removeAttr("readonly").addClass("note-active-field")
   }
}

export default MyNotes