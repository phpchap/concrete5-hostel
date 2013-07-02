<?php $this->inc('elements/header.php'); ?>
<!--=== Content Part ===-->
<div class="container">		
    <div class="row-fluid">
        <div class="span3">
            <div class="myallocator" style="margin-top:20px;">
                <img src="https://myallocator.com/img/booknow/book_button_xl.png" onclick="bookNowApp('Ne96YOAywhUCXR1S-3kQEQ')" style="cursor:pointer" />
            </div>
            <!-- Monthly Newsletter -->
            <div class="headline"><h3>Monthly Newsletter</h3></div>	
            <p>Subscribe to our newsletter and stay up to date with the latest news and deals!</p>
            <form class="form-inline">
                <div class="input-append">
                    <input type="text" placeholder="Email Address" class="input-medium">
                    <button class="btn-u">Subscribe</button>
                </div>
            </form>	
            <div class="headline"><h3>Facebook</h3></div>
            <div style="background:#fff;width:270px;overflow:hidden;" class="fb-like-box" data-href="http://www.facebook.com/pages/Atlas-Hostels-Plc/168741279912015" data-width="292" data-height="400" data-show-faces="true" data-stream="false" data-show-border="false" data-header="true"></div>
        </div>
        <div class="span6">
            <div id="myCarousel" class="carousel slide" style="margin-top:20px">
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="<?= $this->getThemePath(); ?>/assets/img/carousel/5.jpg" alt="">
                        <div class="carousel-caption">
                            <h4>First Thumbnail label</h4>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="<?= $this->getThemePath(); ?>/assets/img/carousel/4.jpg" alt="">
                        <div class="carousel-caption">
                            <h4>Second Thumbnail label</h4>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="<?= $this->getThemePath(); ?>/assets/img/carousel/3.jpg" alt="">
                        <div class="carousel-caption">
                            <h4>Third Thumbnail label</h4>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta.</p>
                        </div>
                    </div>
                </div>
            </div>
            <?php
            $a = new Area("Main");
            $a->display($c);
            ?>
        </div>
        <div class="span3">
            <div class="headline"><h3>Things to Do</h3></div>
            <div class="posts margin-bottom-20">
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="<?= $this->getThemePath(); ?>/assets/img/sliders/elastislide/6.jpg" alt=""></a></dt>
                    <dd>
                        <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="<?= $this->getThemePath(); ?>/assets/img/sliders/elastislide/10.jpg" alt=""></a></dt>
                    <dd>
                        <p><a href="#">Lorem sequat ipsum dolor lorem sunt aliqua put a bird sit amet consectetur.</a></p> 
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="<?= $this->getThemePath(); ?>/assets/img/sliders/elastislide/11.jpg" alt=""></a></dt>
                    <dd>
                        <p><a href="#">It works on all major web browsers, tablets and aliqua lorem sequat ipsum.</a></p> 
                    </dd>
                </dl>
            </div>
            <div class="headline"><h3>Location</h3></div>
            <div style="border:2px solid #AB0765" id="map" class="sidebar map margin-bottom-40"></div>
            <div class="headline"><h3>Follow us</h3></div>
            <div style="float:left;">
                <a href="#"><img src="<?= $this->getThemePath(); ?>/assets/img/twitter_stamp.png"></a>
            </div>
            <div style="float:right;">
                <a href="#"><img src="<?= $this->getThemePath(); ?>/assets/img/Free-Wifi.png" height="100" width="100"></a>
            </div>
        </div>    
    </div><!--/row-fluid-->	
    <!--//End About Us -->
</div><!--/container-->		
<!-- End Content Part -->
<?php $this->inc('elements/footer.php'); ?>
