<?php
defined('C5_EXECUTE') or die("Access Denied.");
$rssUrl = $showRss ? $controller->getRssUrl($b) : '';
$th = Loader::helper('text');
$ih = Loader::helper('image'); //<--uncomment this line if displaying image attributes (see below)
?>
<div class="headline"><h3>Top Attractions</h3></div>
<div class="posts margin-bottom-20">
    <?php foreach ($pages as $page): ?>
        <?php // Prepare data for each page being listed...
            $title = $th->entities($page->getCollectionName());
            $url = $nh->getLinkToCollection($page);
            $target = ($page->getCollectionPointerExternalLink() != '' && $page->openCollectionPointerExternalLinkInNewWindow()) ? '_blank' : $page->getAttribute('nav_target');
            $target = empty($target) ? '_self' : $target;
            $summary = $page->getAttribute('blog_summary');             

            $img_src = '';
            if( $page->getAttribute('thumbnail') ) 
            {
                $img = $page->getAttribute('thumbnail');
                $thumb = $ih->getThumbnail($img, 56, 56, true);
                $img_src = '<img src="' .$thumb->src .'" width="'.$thumb->width .'" height="'.$thumb->height .'" alt="" />';                            
            }
                            
        ?>
        <dl class="dl-horizontal">
            <dt><a href="<?php echo $url; ?>"><?php echo $img_src; ?></a></dt>
            <dd>
                <p><a href="<?php echo $url; ?>"><?php echo $summary;?></a></p> 
            </dd>
        </dl>    
    <?php endforeach; ?>    
</div>