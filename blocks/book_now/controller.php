<?php  defined('C5_EXECUTE') or die("Access Denied.");

class BookNowBlockController extends BlockController {
	
	protected $btName = 'Book Now Button';
	protected $btDescription = 'booking button on the left hand side rail';
	protected $btTable = 'btDCBookNow';
	
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
