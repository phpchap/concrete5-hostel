<?php  defined('C5_EXECUTE') or die("Access Denied.");?>


<?php if(!empty($field_2_image) && !empty($field_4_image) && !empty($field_6_image)) { ?>
    <div id="myCarousel" class="carousel slide" style="margin-top:20px">
        <div class="carousel-inner">
            <!-- props to: http://oojits.com/info/img/corner-ribbons/ -->
            <map name="ribbon">
                <area shape="poly" coords="0,0,150,0,0,150" href="http://www.atlashostels.com">
            </map>
            <img style="position:absolute;top:0;left:0;border:none;z-index:99" alt="£15 a night" usemap="#ribbon" src="data:image/png;base64,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">
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
    
    
