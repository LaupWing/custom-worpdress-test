<?php

/*
   Plugin Name: Our Test Plugin
   Description: A truly amazing plugin.
   Version: 1.0
   Author: Laupwing
   Author URI: 
*/

add_action("admin_menu", "ourPluginSettingsLink");

function ourPluginSettingsLink(){
   add_options_page("Word Count Settings", "Word Count", "manage_options", "word-count-settings-page", "ourSettingsHtml");
}

function ourSettingsHtml() {
?>
   Hello world from our new plugin
<?php
}