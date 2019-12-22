<?php 

	
	function  getInput($string)
    {
        return isset($_GET[$string]) ? $_GET[$string] : '';
    }

    
    /**
     * post Input
     */
    
    function  postInput($string)
    {
        return isset($_POST[$string]) ? $_POST[$string] : '';
    }



    function base_url()
    { 
        return $url  = "http://localhost/web_files/official_web/"; 
    }


    function public_admin()
    {
        return base_url() . "public/admin/";
    }

    function public_frontend()
    {
        return base_url() . "public/frontend/";
    }

    function modules($url)
    {
        return base_url() . "admin/modules/" .$url ;
    }

    function uploads()
    {
        return base_url() . "public/uploads/";
    }
    
     if ( ! function_exists('redirectStyle'))
    {
        function redirectStyle($url = "")
        {
            header("location: ".base_url()."{$url}");exit();
        }
    }



    /**
     *  redirect về các trang 
     */
    if ( ! function_exists('redirectAdmin'))
    {
        function redirectAdmin($url = "")
        {
            header("location: ".base_url()."admin/modules/{$url}");exit();
        }
    }



    /**
     *  redirect về các trang 
     */
    if ( ! function_exists('redirect'))
    {
        function redirect($url = "")
        {
            header("location: ".base_url().$url);exit();
        }
    }
 ?>