<?php 
defined('C5_EXECUTE') or die("Access Denied."); 

$this->inc('elements/header.php'); 

$ih = Loader::helper('image'); //<--uncomment this line if displaying image attributes (see below) 

$page = Page::getCurrentPage();

$thumb = '';
$description = '';

if(is_object($c->getCollectionAttributeValue('thumbnail'))) {  
    $path = $c->getCollectionAttributeValue('thumbnail')->getPath();    
    $thumb = $ih->getThumbnail($path, 500, 9999, false); 
} 

if($c->getAttribute('blog_description')) {  
    $description = $c->getAttribute('blog_description');  
} 

$a = new Area("Breadcrumbs"); 
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
            <div class="margin-bottom-30">
                <div class="headline"><h3><?php echo $page->getCollectionName(); ?></h3></div>                
                <div class="blog-img margin-bottom-10"><img src="<?php echo ($thumb != '') ? $thumb->src : '';  ?>" width="<?php echo ($thumb != '') ? $thumb->width : '';  ?>" height="<?php echo ($thumb != '') ? $thumb->height : '';  ?>" alt="" /></div>
                
                <?php echo $description; ?>
             </div><!--/blog-->            
        </div>
        <?php $this->inc('elements/three_col_right_sidebar.php'); ?>                        
    </div><!--/row-fluid-->	
</div><!--/container-->		
<!-- End Content Part -->
<?php $this->inc('elements/footer.php'); ?>