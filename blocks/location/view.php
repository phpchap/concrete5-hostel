<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<div class="headline"><h3>Location</h3></div>
    <ul class="unstyled who margin-bottom-20">        
        <?php  if (!empty($field_1_textbox_text)): ?>
            <li><i class="icon-home"></i><?php  echo htmlentities($field_1_textbox_text, ENT_QUOTES, APP_CHARSET); ?></li>
        <?php  endif; ?>                   
        <?php  if (!empty($field_2_textbox_text)): ?>
            <li><i class="icon-phone-sign"></i><?php  echo htmlentities($field_2_textbox_text, ENT_QUOTES, APP_CHARSET); ?></li>	
        <?php  endif; ?>        
    </ul>            
<div style="border:2px solid #AB0765" id="map" class="sidebar map margin-bottom-40"></div>
<script type="text/javascript" src="/themes/atlas_hostel/assets/plugins/gmap/gmap.js"></script>
<script type="text/javascript">
jQuery(document).ready(function() {
    Contact.initMap();        
});
</script>