import $ from "jquery"

class Like {
   constructor(){

   }

   events() {
      $(".like-box").on("click", this.ourClickDispatcher.bind(this))
   }

   ourClickDispatcher() {

   }

   createLike() {

   }

   deleteLike() {
      
   }

   // Methods

}

export default Like;