        <div class="span3">
            <?php /*            
            <div class="headline"><h3>Best Attractions</h3></div>
            <div class="posts margin-bottom-20">
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="<?= $this->getThemePath(); ?>/assets/img/sliders/elastislide/6.jpg" alt=""></a></dt>
                    <dd>
                        <p><a href="#">London Zoo</a></p> 
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="<?= $this->getThemePath(); ?>/assets/img/sliders/elastislide/10.jpg" alt=""></a></dt>
                    <dd>
                        <p><a href="#">Kensington Palace</a></p> 
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="<?= $this->getThemePath(); ?>/assets/img/sliders/elastislide/11.jpg" alt=""></a></dt>
                    <dd>
                        <p><a href="#">Tate Modern.</a></p> 
                    </dd>
                </dl>
            </div>
            */ ?>
            <?php 
            $a = new Area("Right Top");
            $a->display($c);            
            ?>
            <div class="headline"><h3>Location</h3></div>
            <div style="border:2px solid #AB0765" id="map" class="sidebar map margin-bottom-40"></div>
            <div class="headline"><h3>Directions</h3></div>            
            <div style="display:block; width:187px; height:222px;font-family:Verdana, Arial, Helvetica, sans-serif !important;background:url(http://www.tfl.gov.uk/tfl/gettingaround/journeyplanner/banners/images/widget-panel.gif) #fff no-repeat; font-size:11px;	border: 1px solid #103994;	border-radius: 4px;	box-shadow: 2px 2px 3px 1px #ccc;"><div style="display:block;padding:30px 0 15px 0;"><h2 style="color: rgb(36, 66, 102); text-align: center; display: block; font-size: 15px; font-family: arial; border: 0; margin-bottom: 1em; margin-top: 0;  font-weight: bold !important; background:0; padding: 0">Journey Planner</h2><form action="http://journeyplanner.tfl.gov.uk/user/XSLT_TRIP_REQUEST2" id="jpForm" method="post" target="tfl" style="margin:5px 0 0 0 !important;padding:0 !important;"><input type="hidden" name="language" value="en" /> <!-- in language = english --><input type="hidden" name="execInst" value="" /><input type="hidden" name="sessionID" value="0" /> <!-- to start a new session on JP the sessionID has to be 0 --><input type="hidden" name="ptOptionsActive" value="-1" /> <!-- all pt options are active --><input type="hidden" name="place_origin" value="London" /> <!-- London is a hidden parameter for the origin location --><input type="hidden" name="place_destination" value="London" /><div style="padding-right: 15px; padding-left: 15px"><input type="text"  name="name_origin" style="width:155px !important; padding: 1px" value="From"/><select style="width:155px !important; margin: 0 !important;" name="type_origin"><option value="stop">Station or stop</option><option value="locator">Postcode</option><option value="address">Address</option><option value="poi">Place of interest</option></select></div><input type="hidden" name="name_destination" value="w2 1tr"/><input name="type_destination" value="locator" type="hidden" /><div style="background: url(http://www.tfl.gov.uk/tfl/gettingaround/journeyplanner/banners/images/panel-separator.gif) no-repeat bottom; padding-bottom: 2px;  padding-top: 2px; overflow: hidden; margin-bottom: 8px"><div style="clear: both; background: url(http://www.tfl.gov.uk/tfl-global/images/options-icons.gif) no-repeat 9.5em 0; height: 30px; padding-right: 15px; padding-left: 15px"><a style="text-decoration:none; color:#113B92;font-size: 11px;white-space:nowrap; display: inline-block; padding: 4px 0 5px 0; width: 155px; margin-top: 5px" target="tfl" href="http://journeyplanner.tfl.gov.uk/user/XSLT_TRIP_REQUEST2?language=en&amp;ptOptionsActive=1"  onclick="javascript:document.getElementById('jpForm').ptOptionsActive.value='1';document.getElementById('jpForm').execInst.value='readOnly';document.getElementById('jpForm').submit(); return false">More options</a></div></div><div style="text-align: center;"><input type="submit" title="Leave now" value="Leave now"   style="border-style: none; background-color: #157DB9; display: inline-block; padding: 4px 11px; color: #fff; text-decoration: none; -moz-border-radius: 3px; -webkit-border-radius: 3px;  border-radius: 3px;	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.25);	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.25); box-shadow: 0 1px 3px rgba(0,0,0,0.25); text-shadow: 0 -1px 1px rgba(0,0,0,0.25);	border-bottom: 1px solid rgba(0,0,0,0.25);	position: relative; cursor: pointer;  font: bold  13px/1 Arial,Helvetica,sans-serif; text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4); line-height: 1;"/></div></form></div></div>                        
        </div>     
