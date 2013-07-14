<?php  defined('C5_EXECUTE') or die("Access Denied.");

class FaqBlockController extends BlockController {
	
	protected $btName = 'FAQ List';
	protected $btDescription = 'List of FAQ Question/Answers';
	protected $btTable = 'btDCFaq';
	
	protected $btInterfaceWidth = "700";
	protected $btInterfaceHeight = "450";
	
	protected $btCacheBlockRecord = true;
	protected $btCacheBlockOutput = true;
	protected $btCacheBlockOutputOnPost = true;
	protected $btCacheBlockOutputForRegisteredUsers = false;
	protected $btCacheBlockOutputLifetime = CACHE_LIFETIME;
	
	public function getSearchableContent() {
		$content = array();
		$content[] = $this->field_1_textbox_text;
		$content[] = $this->field_2_textarea_text;
		$content[] = $this->field_3_textbox_text;
		$content[] = $this->field_4_textbox_text;
		$content[] = $this->field_5_textbox_text;
		$content[] = $this->field_6_textarea_text;
		$content[] = $this->field_7_textbox_text;
		$content[] = $this->field_8_textarea_text;
		$content[] = $this->field_9_textbox_text;
		$content[] = $this->field_10_textarea_text;
		$content[] = $this->field_11_textbox_text;
		$content[] = $this->field_12_textarea_text;
		$content[] = $this->field_13_textbox_text;
		$content[] = $this->field_14_textarea_text;
		$content[] = $this->field_15_textbox_text;
		$content[] = $this->field_16_textarea_text;
		$content[] = $this->field_17_textbox_text;
		$content[] = $this->field_18_textarea_text;
		$content[] = $this->field_19_textbox_text;
		$content[] = $this->field_20_textarea_text;
		return implode(' - ', $content);
	}








}
