<?php   
defined('C5_EXECUTE') or die(_("Access Denied."));
class AsmillerGalleryBlockController extends BlockController {
	
	var $pobj;
	
	protected $btTable = 'btasmillerGallery';
	protected $btInterfaceWidth = "550";
	protected $btInterfaceHeight = "400";

	/** 
	 * Used for localization. If we want to localize the name/description we have to include this
	 */
	public function getBlockTypeDescription() {
		return t("Display a beautiful image gallery (Galleria plugin)");
	}
	
	public function getBlockTypeName() {
		return t("Galleria Image Gallery");
	}
	
	public function getJavaScriptStrings() {
		return array(
			'choose-file' => t('Choose Image/File'),
			'choose-min-2' => t('Please choose at least two images.'),
			'choose-fileset' => t('Please choose a file set.')
		);
	}
	
	function __construct($obj = null) {		
		parent::__construct($obj);
		$this->db = Loader::db();
		if ($this->fsID == 0) {
			$this->loadImages();
		} else {
			$this->loadFileSet();
		}
		$this->set('minHeight', $this->minHeight);
		$this->set('fsID', $this->fsID);
		$this->set('fsName', $this->getFileSetName());
		$this->set('images', $this->images);
		$type = ($this->fsID > 0) ? 'FILESET' : 'CUSTOM';
		$this->set('type', $type);
		$this->set('bID', $this->bID);			
	}	
	
	function view(){
	}
	
	public function on_page_view() {
		$html = Loader::helper('html');
		  $b = $this->getBlockObject();
          $bv = new BlockView();
          $bv->setBlockObject($b);
          $jsPath =  '<script type="text/javascript" src="'.$bv->getBlockURL().'/galleria.js"></script>'; 
		  $this->addHeaderItem($jsPath);
	}
	
	function getFileSetName(){
		$sql = "SELECT fsName FROM FileSets WHERE fsID=".intval($this->fsID);
		return $this->db->getOne($sql); 
	}

	function loadFileSet(){
		if (intval($this->fsID) < 1) {
			return false;
		}
        Loader::helper('concrete/file');
		Loader::model('file_attributes');
		Loader::library('file/types');
		Loader::model('file_list');
		Loader::model('file_set');
		
		$ak = FileAttributeKey::getByHandle('height');
		
		$fs = FileSet::getByID($this->fsID);
		$fileList = new FileList();		
		$fileList->filterBySet($fs);
		$fileList->filterByType(FileType::T_IMAGE);
		$files = $fileList->get(1000,0);				

		$image = array();
		$image['description'] = '';
		$images = array();
		$maxHeight = 0;
		foreach ($files as $f) {
			$fp = new Permissions($f);
			if(!$fp->canRead()) { continue; }
							
			$image['fID'] 			= $f->getFileID();
			$image['fileName'] 		= $f->getFileName();
			$image['fullFilePath'] 	= $f->getPath();
			$image['url']			= $f->getRelativePath();
		
			// find the max height of all the images so galleria doesn't bounce around while rotating
			$vo = $f->getAttributeValueObject($ak);
			if (is_object($vo)) {
				$image['imgWidth'] = $vo->getValue('width');
				$image['imgHeight'] = $vo->getValue('height');
			}
			if ($maxHeight == 0 || $file['value'] > $maxHeight) {
				$maxHeight = $file['value'];
			}
			$images[] = $image;
		}
		$this->images = $images;
	}

	function loadImages(){
		if(intval($this->bID)==0) $this->images=array();
		if(intval($this->bID)==0) return array();
		$sql = "SELECT * FROM btasmillerGalleryImg WHERE bID=".intval($this->bID);
		$this->images=$this->db->getAll($sql); 
	}
	
	function delete(){
		$this->db->query("DELETE FROM btasmillerGalleryImg WHERE bID=".intval($this->bID));		
		parent::delete();
	}
	
	function save($data) { 
		
		$args['smallThumbs'] = 0;
		if($data['smallThumbs'] == 1){
			$args['smallThumbs'] = 1;
		}
		$args['maxHeight'] = $data['maxHeight'];
		$args['maxWidth'] = $data['maxWidth'];
		
		
		if( $data['type'] == 'FILESET' && $data['fsID'] > 0){
			$args['fsID'] = $data['fsID'];

			$files = $this->db->getAll("SELECT fv.fID FROM FileSetFiles fsf, FileVersions fv WHERE fsf.fsID = " . $data['fsID'] .
			         " AND fsf.fID = fv.fID AND fvIsApproved = 1");
			
			//delete existing images
			$this->db->query("DELETE FROM btasmillerGalleryImg WHERE bID=".intval($this->bID));
		} else if( $data['type'] == 'CUSTOM' && count($data['imgFIDs']) ){
			$args['fsID'] = 0;

			//delete existing images
			$this->db->query("DELETE FROM btasmillerGalleryImg WHERE bID=".intval($this->bID));
			
			//loop through and add the images
			$pos=0;
			foreach($data['imgFIDs'] as $imgFID){ 
				if(intval($imgFID)==0 || $data['fileNames'][$pos]=='tempFilename') continue;
				$vals = array(intval($this->bID),intval($imgFID), trim($data['description'][$pos]),
						intval($data['imgHeight'][$pos]),$pos);
					$temp = intval($data['imgWidth'][$pos]);

				$this->db->query("INSERT INTO btasmillerGalleryImg (bID,fID,description,imgHeight,position) values (?,?,?,?,?)",$vals);
				$pos++;
			}
		}
		
		parent::save($args);
	}
	
}

?>
