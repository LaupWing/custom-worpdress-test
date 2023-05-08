<?php
get_header();
$searchQuery = esc_html(get_search_query(false));
pageBanner([
   "title" => "Search Results",
   "subtitle" => "You searched for &ldquo;{$searchQuery}&rdquo;"
])
?>
<div class="container container--narrow page-section">
   <?php 
      if (have_posts()){

         while(have_posts()) {
            the_post();
            get_template_part("template-parts/content", get_post_type());
         }
      } else{
         echo "<h2 class='headline headline--small-plus'>No results match that search.</h2>";
      }
      get_search_form();
   ?>
</div>
<?php
get_footer();
?>