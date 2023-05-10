import $ from "jquery"

class Like {
   constructor(){

   }

   events() {
      $(".like-box").on("click", this.ourClickDispatcher.bind(this))
   }

   ourClickDispatcher(e) {
      var currentLikeBox = $(e.target).closest(".like-box")

      if(currentLikeBox.data("exists") == "yes"){
         this.deleteLike()
      }else {
         this.createLike()
      }
   }

   createLike() {
      alert("create test message")
   }
   
   deleteLike() {
      alert("delete test message")
   }

   // Methods

}

export default Like;