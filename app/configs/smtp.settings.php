<?php
    if(!defined("CryptExchanger_INSTALLED")){
        header("HTTP/1.0 404 Not Found");
        exit;
    }
    
    $smtpconf = array();
    $smtpconf["host"] = "mail.samdefi.cl"; // SMTP SERVER IP/HOST
    $smtpconf["user"] = "info@samdefi.cl";	// SMTP AUTH USERNAME if SMTPAuth is true
    $smtpconf["pass"] = "1tQNVw0+*Y0r";	// SMTP AUTH PASSWORD if SMTPAuth is true
    $smtpconf["port"] = "587";	// SMTP SERVER PORT
    $smtpconf["ssl"] = "1"; // 1 -  YES, 0 - NO
    $smtpconf["SMTPAuth"] = true; // true / false
    ?>
    