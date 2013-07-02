
<!DOCTYPE html>
<!--[if IE 7]> <html lang="en" class="ie7"> <![endif]-->  
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS Global Compulsory-->
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/plugins/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/css/style.css">
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/css/headers/header1.css">
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/plugins/bootstrap/css/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/css/style_responsive.css">
    <link rel="shortcut icon" href="/favicon.ico">        
    <!-- CSS Implementing Plugins -->    
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/plugins/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/plugins/flexslider/flexslider.css" type="text/css" media="screen">      
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/plugins/parallax-slider/css/parallax-slider.css" type="text/css">
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/plugins/revolution_slider/css/rs-style.css" media="screen">
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/plugins/revolution_slider/rs-plugin/css/settings.css" media="screen">    
    <!-- CSS Theme -->    
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/css/themes/blue.css" id="style_color">
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/css/themes/headers/header1-blue.css" id="style_color-header-1">    
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/plugins/fancybox/source/jquery.fancybox.css">           
    <link rel="stylesheet" href="<?=$this->getThemePath();?>/assets/css/effects.css">           
    <script type="text/javascript"> var bookNowWidth = 610; function bookNowApp(e){var t=document.createElement("img");t.style.cursor="pointer";t.src="https://myallocator.com/images/booknow/close_button.png";t.style.zIndex=52;t.style.position="absolute";t.style.left="50%";document.getElementsByTagName("body")[0].appendChild(t);var n=document.createElement("div");n.style.position="fixed";n.style.top="0px";n.style.left="0px";n.style.overflow="hidden";n.style.display="none";n.style.width="100%";n.style.height="100%";n.style.opacity=.7;n.style.MozOpacity=.7;n.style.filter="alpha(opacity=70)";n.style.zIndex=50;n.style.display="block";n.style.backgroundColor="#000000";document.getElementsByTagName("body")[0].appendChild(n);var r=document.createElement("iframe");r.style.width=bookNowWidth+"px";r.style.height="100%";r.style.border="none";r.a="true";r.style.position="absolute";r.style.left="50%";r.style.top="50px";r.style.marginLeft=-(bookNowWidth/2)+"px";r.allowTransparency="true";r.frameBorder = "0";r.style.zIndex=51;r.src="https://myallocator.com/en/booknow/"+e;document.getElementsByTagName("body")[0].appendChild(r);n.addEventListener?n.addEventListener("click",function(){t.parentNode.removeChild(t);n.parentNode.removeChild(n);r.parentNode.removeChild(r)},!1):n.attachEvent("onclick",function(){t.parentNode.removeChild(t);n.parentNode.removeChild(n);r.parentNode.removeChild(r)});t.addEventListener?t.addEventListener("click",function(){t.parentNode.removeChild(t);n.parentNode.removeChild(n);r.parentNode.removeChild(r)},!1):t.attachEvent("onclick",function(){t.parentNode.removeChild(t);n.parentNode.removeChild(n);r.parentNode.removeChild(r)});t.style.marginLeft=bookNowWidth/2-35+"px";t.style.top="38px";window.scroll(0,0)} </script>
    <?=Loader::element('header_required');?>
</head> 
<body>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1&appId=255995124541477";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<!--=== Top ===-->    
<div class="top">
    <div class="container">                 
        <div class="row-fluid">

            <!-- Logo -->      
            <div class="logo">                                             
                <a href="/"><img id="logo-header" src="<?=$this->getThemePath();?>/assets/img/atlashostels.png" alt="Atlas Hostels" title="Atlas Hostels"></a>
            </div>
            <!-- /logo -->                  
            
            <!-- SocialIcons -->
            <ul class="social-icons" style="float:right;width:105px;">
                <li><a href="#" data-original-title="Facebook" class="social_facebook"></a></li>
                <li><a href="#" data-original-title="Twitter" class="social_twitter"></a></li>
                <li><a href="#" data-original-title="Pinterest" class="social_pintrest"></a></li>
            </ul>
            <!-- /SocialIcons-->
            
            <!-- Login -->                  
            <ul class="loginbar inline" style="float:right;width:340px;">
                <li><a href="mailto:info@atlashostels.com"><i class="icon-envelope-alt"></i> info@atlashostels.com</a></li> 
                <li><a><i class="icon-phone-sign"></i> 0845 519 9448</a></li>   
            </ul>
            <!-- /Login -->                              
        </div>                        
    </div><!--/container-->     
</div><!--/top-->
<!--=== End Top ===-->    

<!--=== Header ===-->
<div class="header">               
    <div class="container"> 
        <!-- Menu -->       
        <div class="navbar">                                
            <div class="navbar-inner">                                  
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a><!-- /nav-collapse -->                                  
                <div class="nav-collapse collapse">                                     
                    
                    <!-- Navigation -->      
                    <?php            
                        $a = new GlobalArea('Header Nav'); 
                        $a->display();            
                    ?>           
                    <!-- /Navigation -->                                      
                                        
                </div><!-- /nav-collapse -->                                
            </div><!-- /navbar-inner -->
        </div><!-- /navbar -->                          
            </div><!-- /container -->               
</div><!--/header -->      
<!--=== End Header ===-->