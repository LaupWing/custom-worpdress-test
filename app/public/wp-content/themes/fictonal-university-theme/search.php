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
      while(have_posts()) {
         the_post();
         get_template_part("template-parts/content", get_post_type());
         
   ?>
      
   <?php
      }
      echo paginate_links();
   ?>
</div>
<?php
get_footer();
?>