<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<div class="accordion acc-home margin-bottom-40" id="accordion2">
    <?php if (!empty($field_1_textbox_text) && !empty($field_2_textarea_text)): ?>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne">
                    <?php echo htmlentities($field_1_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                </a>
            </div>
            <div id="collapseOne" class="accordion-body collapse" style="height: 0px; ">
                <div class="accordion-inner">
                    <?php echo nl2br(htmlentities($field_2_textarea_text, ENT_QUOTES, APP_CHARSET)); ?>
                </div>
            </div>
        </div><!--/accordion-group-->        
    <?php endif; ?>
    <?php if (!empty($field_3_textbox_text) && !empty($field_4_textbox_text)): ?>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                    <?php echo htmlentities($field_3_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                </a>
            </div>
            <div id="collapseTwo" class="accordion-body collapse" style="height: 0px; ">
                <div class="accordion-inner">
                    <?php echo htmlentities($field_4_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                </div>
            </div>
        </div><!--/accordion-group-->                    
    <?php endif; ?>
    <?php if (!empty($field_5_textbox_text) && !empty($field_6_textarea_text)): ?>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapseThree">
                    <?php echo htmlentities($field_5_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                </a>
            </div>
            <div id="collapseThree" class="accordion-body collapse" style="height: 0px; ">
                <div class="accordion-inner">
                    <?php echo nl2br(htmlentities($field_6_textarea_text, ENT_QUOTES, APP_CHARSET)); ?>
                </div>
            </div>
        </div><!--/accordion-group-->                            
    <?php endif; ?>
    <?php if (!empty($field_7_textbox_text) && !empty($field_8_textarea_text)): ?>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion4" href="#collapseFour">
                    <?php echo htmlentities($field_7_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                </a>
            </div>
            <div id="collapseFour" class="accordion-body collapse" style="height: 0px; ">
                <div class="accordion-inner">
                    <?php echo nl2br(htmlentities($field_8_textarea_text, ENT_QUOTES, APP_CHARSET)); ?>
                </div>
            </div>
        </div><!--/accordion-group-->                                    
    <?php endif; ?>
    <?php if (!empty($field_9_textbox_text) && !empty($field_10_textarea_text)): ?>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion5" href="#collapseFive">
                    <?php echo htmlentities($field_9_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                </a>
            </div>
            <div id="collapseFive" class="accordion-body collapse" style="height: 0px; ">
                <div class="accordion-inner">
                    <?php echo nl2br(htmlentities($field_10_textarea_text, ENT_QUOTES, APP_CHARSET)); ?>
                </div>
            </div>
        </div><!--/accordion-group-->                                            
    <?php endif; ?>
    <?php if (!empty($field_11_textbox_text) && !empty($field_12_textarea_text)): ?>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion6" href="#collapseSix">
                    <?php echo htmlentities($field_11_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                </a>
            </div>
            <div id="collapseSix" class="accordion-body collapse" style="height: 0px; ">
                <div class="accordion-inner">
                    <?php echo nl2br(htmlentities($field_12_textarea_text, ENT_QUOTES, APP_CHARSET)); ?>
                </div>
            </div>
        </div><!--/accordion-group-->                                                
    <?php endif; ?>
    <?php if (!empty($field_13_textbox_text) && !empty($field_14_textarea_text)): ?>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion7" href="#collapseSeven">
                    <?php echo htmlentities($field_13_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                </a>
            </div>
            <div id="collapseSeven" class="accordion-body collapse" style="height: 0px; ">
                <div class="accordion-inner">
                    <?php echo nl2br(htmlentities($field_14_textarea_text, ENT_QUOTES, APP_CHARSET)); ?>
                </div>
            </div>
        </div><!--/accordion-group-->                                                   
    <?php endif; ?>
    <?php if (!empty($field_15_textbox_text) && !empty($field_16_textarea_text)): ?>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion8" href="#collapseEight">
                    <?php echo htmlentities($field_15_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                </a>
            </div>
            <div id="collapseEight" class="accordion-body collapse" style="height: 0px; ">
                <div class="accordion-inner">
                    <?php echo nl2br(htmlentities($field_16_textarea_text, ENT_QUOTES, APP_CHARSET)); ?>
                </div>
            </div>
        </div><!--/accordion-group-->                                                            
    <?php endif; ?>
    <?php if (!empty($field_17_textbox_text) && !empty($field_18_textarea_text)): ?>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion9" href="#collapseNine">
                    <?php echo htmlentities($field_17_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                </a>
            </div>
            <div id="collapseNine" class="accordion-body collapse" style="height: 0px; ">
                <div class="accordion-inner">
                    <?php echo nl2br(htmlentities($field_18_textarea_text, ENT_QUOTES, APP_CHARSET)); ?>
                </div>
            </div>
        </div><!--/accordion-group-->                                                            
    <?php endif; ?>
    <?php if (!empty($field_19_textbox_text) && !empty($field_20_textarea_text)): ?>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion10" href="#collapseTen">
                    <?php echo htmlentities($field_19_textbox_text, ENT_QUOTES, APP_CHARSET); ?>
                </a>
            </div>
            <div id="collapseTen" class="accordion-body collapse" style="height: 0px; ">
                <div class="accordion-inner">
                    <?php echo nl2br(htmlentities($field_20_textarea_text, ENT_QUOTES, APP_CHARSET)); ?>
                </div>
            </div>
        </div><!--/accordion-group-->                                                            
    <?php endif; ?>
</div>