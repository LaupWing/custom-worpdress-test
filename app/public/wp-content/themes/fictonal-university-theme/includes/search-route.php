<?php 

add_action("rest_api_init", "universityRegisterSearch");

function universityRegisterSearch(){
   register_rest_route("university/v1", "search", [
      "methods" => WP_REST_Server::READABLE,
      "callback" => "universitySerachResults"
   ]);
}

function universitySerachResults($data) {
   $proffessors = new WP_Query([
      "post_type" => "professor",
      "s" =>  sanitize_text_field($data["term"])
   ]);

   $proffessorResults = [];
   while($proffessors->have_posts()) {
      $proffessors->the_post();
      array_push($proffessorResults, [
         "title" => get_the_title(),
         "id" => get_the_ID(),
         "permalink" => get_the_permalink()
      ]);
   } 

   return $proffessorResults;
}