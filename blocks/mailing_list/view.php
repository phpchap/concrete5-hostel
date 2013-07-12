<?php defined('C5_EXECUTE') or die("Access Denied."); ?>


<script>
$(document).ready(function(){
    $("#newsletter_signup").click(function(event) {   
        var email = $("#email").val();        
        event.preventDefault();
        $.ajax({
            type: "POST",
            data: { email: email },
            url: "<?= str_replace("&amp;", "&", $this->action('postToMailChimp')) ?>",
            dataType: 'json',
            success: function(r){                                
                var error_msg = $("#newsletter_error");
                var success_msg = $("#newsletter_success");                
                if( r.message == 'SUCCESS' )
                {
                    success_msg.show();                    
                    error_msg.hide();
                }
                else
                {
                    success_msg.hide();
                    error_msg.show();
                    $("#error_text").text( r.message );
                }
            }
        })
    })    
})
</script>
<!-- ERROR -->
<div class="alert alert-error" id="newsletter_error" style="display:none;">
<button type="button" class="close" data-dismiss="alert">×</button>
<strong>Oh snap!</strong> <span id="error_text">.</span>
</div>

<?php if(empty($_SESSION['mchimp_added'])) { ?>

    <!-- Monthly Newsletter -->
    <?php if (!empty($field_1_textbox_text)): ?>
        <div class="headline"><h3><?php echo htmlentities($field_1_textbox_text, ENT_QUOTES, APP_CHARSET); ?></h3></div>		
    <?php endif; ?>
    <?php if (!empty($field_2_textbox_text)): ?>	
        <p><?php echo htmlentities($field_2_textbox_text, ENT_QUOTES, APP_CHARSET); ?></p>
    <?php endif; ?>

    <form class="form-inline" id="newsletter_form">
        <div class="input-append">
            <input id="email" type="text" placeholder="Email Address" class="input-medium">
            <button id="newsletter_signup" class="btn-u">Subscribe</button>
        </div>
    </form>	
    <?php $display = "display:none;"; ?>
<?php  } else {  ?>
    <?php $display = "display:block;"; ?>
<?php  } ?>

<!-- SUCCESS -->
<div class="alert alert-success" id="newsletter_success" style="<?php echo $display; ?>">
<button type="button" class="close" data-dismiss="alert">×</button>
<span id="success_text">Thanks for registering, please check your inbox.</span>
</div>