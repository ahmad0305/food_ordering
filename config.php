<?php
require('stripe-php-master/init.php');

$publishableKey="pk_test_51OODeFSFouktVVHJlpeYqauCeduME7dRpqRsu92HNKAhJzyuakIKUR4gRqrBZlQhgCzdTBAPj7RwU7W6vwDJWXl500rYaop5HA";

$secretKey="sk_test_51OODeFSFouktVVHJVKRo63fUfazxp1m4WhsYYYs0gpiOVn7gL69CJfZowJWywn3UZ49oB59uC2jMXFHgUNCAeGJo00bkZEk3ft";

\Stripe\Stripe::setApiKey($secretKey);
?>