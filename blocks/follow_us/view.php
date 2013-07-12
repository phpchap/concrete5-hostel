<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>

<?php  if (!empty($field_1_textbox_text)): ?>	
    <div class="headline"><h3>Follow us</h3></div>
    <div style="float:left;">
        <a href="<?php  echo htmlentities($field_1_textbox_text, ENT_QUOTES, APP_CHARSET); ?>" target="_blank"><img src="<?= $this->getThemePath(); ?>/assets/img/twitter_stamp.png"></a>
    </div>
<?php  endif; ?>
<div style="float:right;">
    <a href="#"><img src="<?= $this->getThemePath(); ?>/assets/img/Free-Wifi.png" height="100" width="100"></a>
</div>            