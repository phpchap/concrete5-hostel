
<!--=== Copyright ===-->
<div class="copyright">
    <div class="container">
        <div class="row-fluid">
            <div class="span12" id="footer_text">
                <?php            
                $a = new GlobalArea('Footer'); 
                $a->display();            
                ?>           
            </div>
        </div><!--/row-fluid-->
    </div><!--/container-->	
</div>
<!--=== End Copyright ===-->

<!-- JS Global Compulsory -->           
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/js/modernizr.custom.js"></script>        
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<!-- JS Implementing Plugins -->           
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/plugins/parallax-slider/js/modernizr.js"></script>
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/plugins/parallax-slider/js/jquery.cslider.js"></script> 
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/plugins/bxslider/jquery.bxslider.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/js/app.js"></script>
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/js/pages/index.js"></script>
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/js/pages/contact.js"></script>
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/plugins/revolution_slider/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript" src="<?=$this->getThemePath();?>/assets/plugins/revolution_slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script> 
<script type="text/javascript">
jQuery(document).ready(function() {
    App.init();
    App.initSliders();
});
</script>
<!--[if lt IE 9]>
<script src="<?=$this->getThemePath();?>/assets/js/respond.js"></script>
<![endif]-->
<?=Loader::element('footer_required');?>
</body>
</html> 
