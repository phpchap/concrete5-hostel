<?php $this->inc('elements/header.php'); ?>

<?php  $a = new Area("Breadcrumbs"); 
if (($a->getTotalBlocksInArea($c) > 0) || ($c->isEditMode())) {  ?>
    <div class="row-fluid breadcrumbs">
        <div class="container">
            <?php $a->display($c); ?>
        </div><!--/container-->
    </div>
<?php } ?>        

<!--=== Content Part ===-->
<div class="container">		
    <div class="row-fluid">        
        <?php $this->inc('elements/three_col_left_sidebar.php'); ?>                
        <div class="span6">            
            <?php
            $a = new Area("Main");
            $a->display($c); 
            ?>
        </div>
        <?php $this->inc('elements/three_col_right_sidebar.php'); ?>                        
    </div><!--/row-fluid-->	
</div><!--/container-->		
<!-- End Content Part -->
<?php $this->inc('elements/footer.php'); ?>
