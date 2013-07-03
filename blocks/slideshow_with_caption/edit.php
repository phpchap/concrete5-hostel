<?php  defined('C5_EXECUTE') or die("Access Denied.");
$al = Loader::helper('concrete/asset_library');
?>

<style type="text/css" media="screen">
	.ccm-block-field-group h2 { margin-bottom: 5px; }
	.ccm-block-field-group td { vertical-align: middle; }
</style>

<div class="ccm-block-field-group">
	<h2>caption 1</h2>
	<?php  echo $form->text('field_1_textbox_text', $field_1_textbox_text, array('style' => 'width: 95%;')); ?>
</div>

<div class="ccm-block-field-group">
	<h2>Image 1</h2>
	<?php  echo $al->image('field_2_image_fID', 'field_2_image_fID', 'Choose Image', $field_2_image); ?>
</div>

<div class="ccm-block-field-group">
	<h2>caption 2</h2>
	<?php  echo $form->text('field_3_textbox_text', $field_3_textbox_text, array('style' => 'width: 95%;')); ?>
</div>

<div class="ccm-block-field-group">
	<h2>image 2</h2>
	<?php  echo $al->image('field_4_image_fID', 'field_4_image_fID', 'Choose Image', $field_4_image); ?>
</div>

<div class="ccm-block-field-group">
	<h2>caption 3</h2>
	<?php  echo $form->text('field_5_textbox_text', $field_5_textbox_text, array('style' => 'width: 95%;')); ?>
</div>

<div class="ccm-block-field-group">
	<h2>image 3</h2>
	<?php  echo $al->image('field_6_image_fID', 'field_6_image_fID', 'Choose Image', $field_6_image); ?>
</div>

<div class="ccm-block-field-group">
	<h2>caption 4</h2>
	<?php  echo $form->text('field_7_textbox_text', $field_7_textbox_text, array('style' => 'width: 95%;')); ?>
</div>

<div class="ccm-block-field-group">
	<h2>image 4</h2>
	<?php  echo $al->image('field_8_image_fID', 'field_8_image_fID', 'Choose Image', $field_8_image); ?>
</div>


