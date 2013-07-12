<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php if (!empty($field_1_textbox_text)): ?>    
    <div class="headline"><h3><?php echo htmlentities($field_1_textbox_text, ENT_QUOTES, APP_CHARSET); ?></h3></div>
<?php endif; ?>
<div id="map" class="map map-box map-box-space margin-bottom-40"></div><!---/map-->
<script type="text/javascript" src="/themes/atlas_hostel/assets/plugins/gmap/gmap.js"></script>
<script type="text/javascript">
jQuery(document).ready(function() {
    Contact.initMap();        
});
</script>