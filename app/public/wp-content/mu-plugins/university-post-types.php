<?php
function university_post_types() {
   register_post_type("event", [
      "rewrite" => ["slug" => "events"],
      "has_archive" => true,
      "show_in_rest" => true,
      "supports" => ["title", "editor", "excerpt"],
      "public" => true,
      "labels" => [
         "name" => "Events",
         "add_new_item" => "Add New Event",
         "edit_item" => "Edit Event",
         "all_items" => "All Events",
         "singular_name" => "Event"
      ],
      "menu_icon" => "dashicons-calendar"
   ]);

   register_post_type("program", [
      "rewrite" => ["slug" => "programs"],
      "has_archive" => true,
      "show_in_rest" => true,
      "supports" => ["title", "editor"],
      "public" => true,
      "labels" => [
         "name" => "Programs",
         "add_new_item" => "Add New Program",
         "edit_item" => "Edit Program",
         "all_items" => "All Programs",
         "singular_name" => "Program"
      ],
      "menu_icon" => "dashicons-awards"
   ]);
}

add_action("init", "university_post_types");