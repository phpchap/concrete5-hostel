<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<div class="myallocator" style="margin-top:20px;">
    <img src="https://myallocator.com/img/booknow/book_button_xl.png" onclick="bookNowApp('Ne96YOAywhUCXR1S-3kQEQ')" style="cursor:pointer" />
    <?php if (!empty($field_1_textbox_text)): ?>
        <h4><?php echo htmlentities($field_1_textbox_text, ENT_QUOTES, APP_CHARSET); ?></h4>
    <?php endif; ?>
</div>