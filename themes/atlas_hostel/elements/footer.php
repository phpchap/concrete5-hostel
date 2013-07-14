
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
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-42453364-1', 'atlashostels.com');
  ga('send', 'pageview');
</script>
<!--[if lt IE 9]>
<script src="<?=$this->getThemePath();?>/assets/js/respond.js"></script>
<![endif]-->
<?=Loader::element('footer_required');?>
</body>
</html> 
