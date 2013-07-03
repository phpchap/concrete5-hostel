<?php  defined('C5_EXECUTE') or die("Access Denied.");
$nh = Loader::helper('navigation');
?>

<div id="myCarousel" class="carousel slide" style="margin-top:20px">
    <div class="carousel-inner">
        <div class="item">
            <?php if (!empty($field_2_image)): ?>
                <?php if (!empty($field_2_image_internalLinkCID)) { ?><a href="<?php echo $nh->getLinkToCollection(Page::getByID($field_2_image_internalLinkCID), true); ?>"><?php  } ?><img src="<?php  echo $field_2_image->src; ?>" width="<?php  echo $field_2_image->width; ?>" height="<?php  echo $field_2_image->height; ?>" alt="" /><?php if (!empty($field_2_image_internalLinkCID)) { ?></a><?php } ?>
            <?php endif; ?>
            <?php if (!empty($field_1_textbox_text)): ?>
                <div class="carousel-caption"><h4><?php  echo htmlentities($field_1_textbox_text, ENT_QUOTES, APP_CHARSET); ?></h4><p></p></div>
            <?php endif; ?>
        </div>
    </div>
</div>





