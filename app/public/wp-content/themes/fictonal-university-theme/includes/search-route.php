<?php 

add_action("rest_api_init", "universityRegisterSearch");

function universityRegisterSearch(){
   register_rest_route("university/v1", "search", [
      "methods" => WP_REST_Server::READABLE,
      "callback" => "universitySerachResults"
   ]);
}

function universitySerachResults($data) {
   $mainQuery = new WP_Query([
      "post_type" => ["professor", "page", "post", "event", "campus", "program"],
      "s" =>  sanitize_text_field($data["term"])
   ]);

   $results = [
      "generalInfo" => [],
      "professors" => [],
      "programs" => [],
      "events" => [],
      "campuses" => []
   ];

   while($mainQuery->have_posts()) {
      $mainQuery->the_post();
      
      if(get_post_type() == "post" OR get_post_type() == "page"){
         array_push($results["generalInfo"], [
            "title" => get_the_title(),
            "id" => get_the_ID(),
            "permalink" => get_the_permalink(),
            "postType" => get_post_type(),
            "authorName" => get_the_author()
         ]);
      }
      if(get_post_type() == "professor"){
         array_push($results["professors"], [
            "title" => get_the_title(),
            "id" => get_the_ID(),
            "permalink" => get_the_permalink(),
            "image" => get_the_post_thumbnail_url(0, "professorLandscape")
         ]);
      }
      if(get_post_type() == "program"){
         array_push($results["programs"], [
            "title" => get_the_title(),
            "id" => get_the_ID(),
            "permalink" => get_the_permalink()
         ]);
      }
      if(get_post_type() == "event"){
         $eventDate = new DateTime(get_field("event_date"));
         $description  = null;
         if(has_excerpt()){
            $description =  get_the_excerpt();
         } else {
            $description = wp_trim_words(get_the_content(), 18);
         }

         array_push($results["events"], [
            "title" => get_the_title(),
            "id" => get_the_ID(),
            "permalink" => get_the_permalink(),
            "month" => $eventDate->format("M"),
            "day" => $eventDate->format("d"),
            "description" => $description
         ]);
      }
      if(get_post_type() == "campus"){
         array_push($results["campuses"], [
            "title" => get_the_title(),
            "id" => get_the_ID(),
            "permalink" => get_the_permalink()
         ]);
      }
   } 

   $programRelationshipQuery = new WP_Query([
      "post_type" => "professor",
      "meta_query" => [
         [
            "key" => "related_programs",
            "compare" => "LIKE",
            "value" => '"54"'
         ]
      ]
   ]);

   while ($programRelationshipQuery->have_posts()){
      $programRelationshipQuery->the_post();
      if(get_post_type() == "professor"){
         array_push($results["professors"], [
            "title" => get_the_title(),
            "id" => get_the_ID(),
            "permalink" => get_the_permalink(),
            "image" => get_the_post_thumbnail_url(0, "professorLandscape")
         ]);
      }
   }

   $results["professors"] = array_values(array_unique($results["professorts"], SORT_REGULAR));

   return $results;
}