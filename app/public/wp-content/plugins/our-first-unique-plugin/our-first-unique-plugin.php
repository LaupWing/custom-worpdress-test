<?php

/*
   Plugin Name: Our Test Plugin
   Description: A truly amazing plugin.
   Version: 1.0
   Author: Laupwing
   Author URI: 
*/

class WordCountAndTimePlugin {
   function __construct()
   {
      add_action("admin_menu", array($this, "adminPage"));
      add_action("admin_init", array($this, "settings"));
   }
   
   function adminPage(){
      add_options_page("Word Count Settings", "Word Count", "manage_options", "word-count-settings-page", array($this, "ourHTML"));
   }

   function settings(){
      register_setting("wordcountplugin", "wcp_location", array("sanitize_callback" => "sanitize_text_field", "default" => 0));
   }
   
   function ourHTML() {
   ?>
      <div class="wrap">
         <h1>Word Count Settings</h1>
      </div>
   <?php
   }
}

$wordCountAndTimePlugin = new WordCountAndTimePlugin();
