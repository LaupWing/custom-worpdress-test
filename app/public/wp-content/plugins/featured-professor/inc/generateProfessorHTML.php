<?php

function generateProfessorHTML($id) {
   $profPost = new WP_Query(array(
      "post_type" => "professor",
      "p" => $id
   ));

   while($profPost->have_posts()){
      $profPost->the_post();
      ob_start(); 
   ?>
      <div class="professort-callout">
         <div class="professor-callout__photo" style="background-image: url(<?php the_post_thumbnail_url("professorPortrait") ?>);"></div>
         <div class="professor-callout__text"></div>
         <h5><?php the_title() ?></h5>
         <p><?php echo wp_trim_words(get_the_content(), 30); ?></p>
      </div>
   <?php
      wp_reset_postdata();
      return ob_get_clean();
   }

   return "Hello from our new file";
}