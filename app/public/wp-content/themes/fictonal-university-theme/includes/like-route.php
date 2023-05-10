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

function createLike($data) {
   $professorId =  sanitize_text_field($data["professorId"]);
   wp_insert_post([
      "post_type" => "like",
      "post_status" => "publish",
      "post_title" => "2nd PHP Test",
      "meta_input" => [
         "liked_professor_id" => $professorId
      ]
   ]);
}

function deleteLike() {
   return "Thanks for trying to delete al like";
}