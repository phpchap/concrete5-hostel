<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<!-- Contacts -->
<div class="headline"><h3>Address</h3></div>
<ul class="unstyled who margin-bottom-20">
    <?php  if (!empty($field_1_textbox_text)): ?>
                    <li><i class="icon-home"></i><?php  echo htmlentities($field_1_textbox_text, ENT_QUOTES, APP_CHARSET); ?></li>	
    <?php  endif; ?>                
    <?php  if (!empty($field_2_textbox_text)): ?>
            <li><i class="icon-phone-sign"></i><?php  echo htmlentities($field_2_textbox_text, ENT_QUOTES, APP_CHARSET); ?></li>
    <?php  endif; ?>                
</ul>
<!-- Business Hours -->
<div class="headline"><h3>Contact</h3></div>
<ul class="unstyled who">
    <?php  if (!empty($field_3_textbox_text)): ?>
            <li><a href="<?php  echo htmlentities($field_3_textbox_text, ENT_QUOTES, APP_CHARSET); ?>"><i class="icon-envelope-alt"></i><?php  echo htmlentities($field_3_textbox_text, ENT_QUOTES, APP_CHARSET); ?></a></li>                	
    <?php  endif; ?>                

    <?php  if (!empty($field_4_textbox_text)): ?>
            <li><a href="<?php  echo htmlentities($field_4_textbox_text, ENT_QUOTES, APP_CHARSET); ?>"><i class="icon-envelope-alt"></i><?php  echo htmlentities($field_4_textbox_text, ENT_QUOTES, APP_CHARSET); ?></a></li>                	
    <?php  endif; ?>                

    <?php  if (!empty($field_5_textbox_text)): ?>
            <li><a href="<?php  echo htmlentities($field_5_textbox_text, ENT_QUOTES, APP_CHARSET); ?>"><i class="icon-envelope-alt"></i><?php  echo htmlentities($field_5_textbox_text, ENT_QUOTES, APP_CHARSET); ?></a></li>                	
    <?php  endif; ?>                                
</ul>