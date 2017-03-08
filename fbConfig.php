<?php
session_start();

//Include Facebook SDK
require_once 'inc/facebook.php';

/*
 * Configuration and setup FB API
 */
$appId = '1286138694795997'; //Facebook App ID
$appSecret = '2d28deeeb096dc08322ecb5b157d3f71'; // Facebook App Secret
$redirectURL = 'http://localhost/facebook_login_with_php/calendar/datastore.php'; // Callback URL
$fbPermissions = 'email';  //Required facebook permissions

//Call Facebook API
$facebook = new Facebook(array(
  'appId'  => $appId,
  'secret' => $appSecret
));
$fbUser = $facebook->getUser();
?>