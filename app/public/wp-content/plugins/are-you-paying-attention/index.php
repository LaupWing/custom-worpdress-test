<?php

/*
   Plugin Name: Are You Paying Attention Quiz
   Description: Give your readers a multiple choice question.
   Version: 1.0
   Author: Laupwing
   Author URI: 
*/

if (!defined("ABSPATH")){
   exit;
}

class AreYouPayingAttention {
   function __construct()
   {
      add_action(
         "init", 
         array($this, "adminAssets")
      );
   }

   function adminAssets() {
      wp_register_script(
         "ournewblogtype", 
         plugin_dir_url(__FILE__) . "build/index.js", 
         array("wp-blocks", "wp-element")
      );
      register_block_type("ourplugin/are-you-paying-attention", array(
         "editor_script" => "ournewblogtype",
         "render_callback" => array($this, "theHTML")
      ));
   }

   function theHTML($attributes) {
      ob_start(); 
   ?>
      <h3>Today the sky sis blue <?php echo esc_html($attributes["skyColor"]) ?> and the grass is <?php echo esc_html($attributes["grassColor"]) ?> </h3>
   <?php return ob_get_clean();
   }
}

$areYouPayingAttention = new AreYouPayingAttention();