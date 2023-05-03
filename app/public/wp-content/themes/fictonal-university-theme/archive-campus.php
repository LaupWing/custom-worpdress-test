<?php
   get_header();
   pageBanner([
      "title" => "Our Campuses",
      "subtitle" => "We ahve serveral conventiently located campuses."
   ])
?>

<div class="container container--narrow page-section">
   <div class="acf-map">
      <?php 
         while(have_posts()) {
            the_post();
            $mapLocation = get_field("map_location");

      ?>
         <div 
            data-lat="<?php echo $mapLocation["lat"]; ?>"
            data-lng="<?php echo $mapLocation["lng"]; ?>"
         >

         </div>
      <?php
         }
         echo paginate_links();
      ?>
   </div>
</div>
<?php
   get_footer();
?> 