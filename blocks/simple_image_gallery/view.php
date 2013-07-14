<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$html = Loader::helper('html');
$c = Page::getCurrentPage();
?>
<?php if ( count($images ) > 0) { ?>
    <?php $cnt = 1; ?>
    <ul class="thumbnails">
        <?php foreach ($images as $img): ?>
            <li class="span3">
                <a class="thumbnail fancybox-button zoomer" data-rel="fancybox-button" title="<?php echo $img['title']; ?>" href="<?php echo $img['full_src']; ?>">
                    <div class="overlay-zoom">	
                        <img src="<?php echo $img['full_src']; ?>" alt="" />
                        <div class="zoom-icon"></div>					
                    </div>												
                </a>
            </li>        
            <?php echo ($cnt % 4 == 0 && $cnt != 1 || count($img) == $i) ? '</ul><ul class="thumbnails">': ''; ?>
            <?php $cnt++; ?>
        <?php endforeach; ?>            
<?php } ?> 
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.initFancybox();
    });
</script>