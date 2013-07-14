<?php defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<div class="row-fluid breadcrumbs">
    <div class="container">
        <h1 class="pull-left"><?php 
            $page = Page::getCurrentPage();
            echo $page->getCollectionName(); ?>
        </h1>
        <ul class="pull-right breadcrumb">            
            <li><a href="<?php echo $homePageLink; ?>"><?php echo "Home"; ?></a><span class="divider"><?php echo htmlspecialchars($delimiter); ?></span></li>                        
            <?php
            $sublevels = $this->controller->getSubLevels();
            if (!empty($sublevels)) {
                
                $cnt = 1;
                $hasFAQ = (count($sublevels) > 1) ? true : false;
                foreach ($sublevels as $p) {                        
                    if( $hasFAQ && $p["title"] == "FAQ") 
                    {
                        continue;
                    }
                    echo '<li>';            
                    if ($p["link"] !== false) {
                        echo '<a href="' . $p["link"] . '">';
                    } 
                    echo $p["title"];
                    if ($p["link"] !== false) {
                        echo '</a>';
                    } 
                    
                    ?><span class="divider"><?php
                    if( $cnt != count ( $sublevels) ) 
                    {
                        echo htmlspecialchars($delimiter);  
                    }
                    ?></span><?php 
        
                    echo '</li>';
                    $cnt++;        
                }
            }
            ?>            
        </ul>
    </div><!--/container-->
</div>
