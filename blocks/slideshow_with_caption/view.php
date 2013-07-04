<?php  defined('C5_EXECUTE') or die("Access Denied.");?>
<style>
.wrapper 
{
  margin: 50px auto;
  width: 250px;
  height: 370px;
  background: white;
  border-radius: 10px;
  -webkit-box-shadow: 0px 0px 8px rgba(0,0,0,0.3);
  -moz-box-shadow:    0px 0px 8px rgba(0,0,0,0.3);
  box-shadow:         0px 0px 8px rgba(0,0,0,0.3);
  position: relative;
  z-index: 1;
}
.ribbon-outer
{
width:143px;
height:143px;
overflow:hidden; 
position:absolute;
top: 0;
left: 0;
z-index:999;
}
.ribbon-inner {
font: bold 18px Sans-Serif;
background: #00B3DE;
background: -moz-linear-gradient(top, rgba(0, 179, 222, 1) 0%, rgba(0, 179, 222, 1) 100%);
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0, 179, 222, 1)), color-stop(100%,rgba(0, 179, 222, 1)));
background: -webkit-linear-gradient(top, rgba(0, 179, 222, 1) 0%,rgba(0, 179, 222, 1) 100%);
background: -o-linear-gradient(top, rgba(0, 179, 222, 1) 0%,rgba(0, 179, 222, 1) 100%);
background: -ms-linear-gradient(top, rgba(0, 179, 222, 1) 0%,rgba(0, 179, 222, 1) 100%);
background: linear-gradient(to bottom, rgba(0, 179, 222, 1) 0%,rgba(0, 179, 222, 1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffaf4b', endColorstr='#ff920a',GradientType=0 );
text-align: center;
color: white;
top: 43px;
left: -40px;
width: 184px;
padding: 5px;
position: relative;
-webkit-transform: rotate(-45deg);
}
.ribbon-inner:before, .ribbon-inner:after {
  content: "";
  border-top:   3px solid #CC7A29;   
  border-left:  3px solid transparent;
  border-right: 3px solid transparent;
  position:absolute;
  bottom: 3px;
}

.ribbon-inner:before {
  left: 0;
}
.ribbon-inner:after {
  right: 0;
}
</style>

<?php if(!empty($field_2_image) && !empty($field_4_image) && !empty($field_6_image)) { ?>
    <div id="myCarousel" class="carousel slide" style="margin-top:20px">
        <div class="carousel-inner">


<div class="ribbon-outer">
    <div class="ribbon-inner">Rooms from £15</div></div>
            
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
    
    
