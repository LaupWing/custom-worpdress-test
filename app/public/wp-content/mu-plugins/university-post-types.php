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
      "supports" => ["title"],
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

   register_post_type("professor", [
      "rewrite" => ["slug" => "professor"],
      "has_archive" => true,
      "show_in_rest" => true,
      "supports" => ["title", "editor", "thumbnail"],
      "public" => true,
      "labels" => [
         "name" => "Professors",
         "add_new_item" => "Add New Professor",
         "edit_item" => "Edit Professor",
         "all_items" => "All Professors",
         "singular_name" => "Professor"
      ],
      "menu_icon" => "dashicons-welcome-learn-more"
   ]);

   register_post_type("campus", [
      "rewrite" => ["slug" => "campuses"],
      "has_archive" => true,
      "show_in_rest" => true,
      "supports" => ["title", "editor", "thumbnail"],
      "public" => true,
      "labels" => [
         "name" => "Campsuses",
         "add_new_item" => "Add New Campus",
         "edit_item" => "Edit Campus",
         "all_items" => "All Campuses",
         "singular_name" => "Campus"
      ],
      "menu_icon" => "dashicons-location-alt"
   ]);
}

add_action("init", "university_post_types");