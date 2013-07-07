<?php

defined('C5_EXECUTE') or die("Access Denied.");
require_once(dirname(__FILE__)."/mailchimp/inc/MCAPI.class.php");


class MailingListBlockController extends BlockController {

    protected $btName = 'Mailing List';
    protected $btDescription = 'Mailchimp Mailing List block';
    protected $btTable = 'btDCMailingList';
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
        $content[] = $this->field_2_textbox_text;
        return implode(' - ', $content);
    }

    /**
     * make an API call to Mailchimp to register the email address
     * @return string 
     */
    function action_postToMailChimp() {

        // Validation
        if (empty($_POST['email'])) 
        {
            echo json_encode(array("message" => "Email address empty"));
            exit;
        } 
        else 
        {
            $email = $_POST['email'];
        }

        if (!preg_match("/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*$/i", $email)) 
        {
            echo json_encode(array("message" => "Email address invalid"));                        
            exit;            
        }

        // grab an API Key from http://admin.mailchimp.com/account/api/
        $api = new MCAPI('a3eee3a13c30569044b8f81614f967d6-us7');

        // grab your List's Unique Id by going to http://admin.mailchimp.com/lists/
        // Click the "settings" link for the list - the Unique Id is at the bottom of that page. 
        $list_id = "c2fb6ef3b0";

        if ($api->listSubscribe($list_id, $email, '') === true) 
        {
            $_SESSION['mchimp_added'] = true;
            // It worked!	
            echo json_encode(array("message" => "SUCCESS"));                                    
            exit;
        } 
        else 
        {
            // An error ocurred, return error message	
            echo json_encode(array("message" => $api->errorMessage));                                               
            exit;
        }
    }
}
