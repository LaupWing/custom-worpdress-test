<?php 

add_action("rest_api_init", "universityLikeRoutes");

function universityLikeRoutes(){
   register_rest_route("university/v1", "manageLike", [
      "methods" => "POST",
      "callback" => "createLike"
   ]);
   register_rest_route("university/v1", "manageLike", [
      "methods" => "DELETE",
      "callback" => "deleteLike"
   ]);
}

function createLike() {
   return "Thanks for trying to create like";
}

function deleteLike() {
   return "Thanks for trying to delete al like";
}