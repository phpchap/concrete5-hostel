<?php  defined('C5_EXECUTE') or die("Access Denied.");

class LocationMapMiddleBlockController extends BlockController {
	
	protected $btName = 'Location Map Middle';
	protected $btDescription = 'Location in the middle of the page';
	protected $btTable = 'btDCLocationMapMiddle';
	
	protected $btInterfaceWidth = "700";
	protected $btInterfaceHeight = "450";
	
	protected $btCacheBlockRecord = true;
	protected $btCacheBlockOutput = true;
	protected $btCacheBlockOutputOnPost = true;
	protected $btCacheBlockOutputForRegisteredUsers = false;
	protected $btCacheBlockOutputLifetime = CACHE_LIFETIME;
	
	public function getSearchableContent() {
		return $this->field_1_textbox_text;
	}








}
