
<?php 
  
  require_once __DIR__. '/../../load_database/loadData.php';

  $id=intval(getInput('id'));
  $EditStudent=$db->fetchID("students",$id,"studentid");
  if(empty($EditStudent)){
    $_SESSION['error']="Dữ liệu không tồn tại";
    
  }
      
  $id_delete=$db->delete("students",$id,"studentid");
  if($id_delete>0){
            $_SESSION['success']="Đã xóa ";
            redirectAdmin("students");
  }
  else {
        $_SESSION['error']="Chưa xóa ";
            redirectAdmin("students");

  }
      
 ?>

