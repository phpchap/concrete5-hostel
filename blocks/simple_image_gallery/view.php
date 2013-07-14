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
                <a class="thumbnail fancybox-button zoomer" data-rel="fancybox-button" title="<?php echo $img['title']; ?>" href="<?php  echo $img['full_src']; ?>">
                    <div class="overlay-zoom">	

                            <div style="height: <?php  echo $max_img_height; ?>px;">                                                            
                                <?php echo $html->image($img['thumb_src'], $img['thumb_width'], $img['thumb_height'], array('alt' => $img['title'])); ?>
                                <div class="zoom-icon"></div>					
                            </div>
                    </div>												
                </a>
            </li>        
            <?php echo ($cnt % 4 == 0 && $cnt != 1 || count($img) == $i) ? '<ul class="thumbnails">': ''; ?>
            <?php $cnt++; ?>
        <?php endforeach; ?>            
<?php } ?> 

