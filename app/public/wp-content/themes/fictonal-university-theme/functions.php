<?php 

function university_files() {
   wp_enqueue_style("our-main-styles", get_theme_file_uri("/build/style-index.css"));
}

add_action("wp_enqueue_scripts", "university_files");
?>