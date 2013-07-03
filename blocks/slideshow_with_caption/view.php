<?php  defined('C5_EXECUTE') or die("Access Denied.");
?>

<?php if(!empty($field_2_image) && !empty($field_4_image) && !empty($field_6_image)) { ?>
    <div id="myCarousel" class="carousel slide" style="margin-top:20px">
        <div class="carousel-inner">
            
            <div class="item active">
                <?php  if (!empty($field_2_image)): ?>
                    <img src="<?php  echo $field_2_image->src; ?>" width="<?php  echo $field_2_image->width; ?>" height="<?php  echo $field_2_image->height; ?>" alt="" />
                <?php  endif; ?>
                <div class="carousel-caption">
                    <h4><?php  if (!empty($field_1_textbox_text)): ?>
                    <?php  echo htmlentities($field_1_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                    <?php  endif; ?></h4>
                </div>
            </div>
            
            <?php  if (!empty($field_4_image) && !empty($field_3_textbox_text)): ?>
            <div class="item">
                <?php  if (!empty($field_4_image)): ?>
                    <img src="<?php  echo $field_4_image->src; ?>" width="<?php  echo $field_4_image->width; ?>" height="<?php  echo $field_4_image->height; ?>" alt="" />
                <?php  endif; ?>
                <div class="carousel-caption">
                    <h4><?php  if (!empty($field_3_textbox_text)): ?>
                    <?php  echo htmlentities($field_3_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                    <?php  endif; ?></h4>
                </div>
            </div>
            <?php  endif; ?>
            
            <?php  if (!empty($field_6_image) && !empty($field_5_textbox_text)): ?>
            <div class="item">
                <?php  if (!empty($field_6_image)): ?>
                    <img src="<?php  echo $field_6_image->src; ?>" width="<?php  echo $field_6_image->width; ?>" height="<?php  echo $field_6_image->height; ?>" alt="" />
                <?php  endif; ?>
                <div class="carousel-caption">
                    <h4><?php  if (!empty($field_5_textbox_text)): ?>
                    <?php  echo htmlentities($field_5_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                    <?php  endif; ?></h4>
                </div>
            </div>
            <?php  endif; ?>       

            <?php  if (!empty($field_8_image) && !empty($field_7_textbox_text)): ?>
            <div class="item">
                <?php  if (!empty($field_8_image)): ?>
                    <img src="<?php  echo $field_8_image->src; ?>" width="<?php  echo $field_8_image->width; ?>" height="<?php  echo $field_8_image->height; ?>" alt="" />
                <?php  endif; ?>
                <div class="carousel-caption">
                    <h4><?php  if (!empty($field_7_textbox_text)): ?>
                    <?php  echo htmlentities($field_7_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                    <?php  endif; ?></h4>
                </div>
            </div>
            <?php  endif; ?>
                        
        </div>
    </div>   
<?php } ?>
    
    
