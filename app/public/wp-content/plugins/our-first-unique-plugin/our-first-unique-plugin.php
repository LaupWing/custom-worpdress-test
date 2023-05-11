<?php

/*
   Plugin Name: Our Test Plugin
   Description: A truly amazing plugin.
   Version: 1.0
   Author: Laupwing
   Author URI: 
*/

add_filter("the_content", "addToEndOfPost");

function addToEndOfPost($content) {
   return $content . "<p>My name is Laup Wing</p>";
}