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
         "enqueue_block_editor_assets", 
         array($this, "adminAssets")
      );
   }

   function adminAssets() {
      wp_enqueue_script(
         "ournewblogtype", 
         plugin_dir_url(__FILE__) . "build/index.js", 
         array("wp-blocks", "wp-element")
      );
   }
}

$areYouPayingAttention = new AreYouPayingAttention();