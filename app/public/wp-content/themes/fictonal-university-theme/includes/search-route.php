<?php 

add_action("rest_api_init", "universityRegisterSearch");

function universityRegisterSearch(){
   register_rest_route("university/v1", "search", [
      "methods" => WP_REST_Server::READABLE,
      "callback" => "universitySerachResults"
   ]);
}

function universitySerachResults() {
   return "Congratulations, you created a route";
}