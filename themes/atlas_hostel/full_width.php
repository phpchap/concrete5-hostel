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
    <div class="row-fluid privacy">
        <div class="headline">
            <?php
            $a = new Area("Title");
            $a->display($c); 
            ?>
        </div>
        <?php
        $a = new Area("Content");
        $a->display($c); 
        ?>        
    </div>
</div>    

<!-- End Content Part -->
<?php $this->inc('elements/footer.php'); ?>
