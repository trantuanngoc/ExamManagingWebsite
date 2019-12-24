
<?php 
  $open="students";
  require_once __DIR__. '/../../load_database/loadData.php';

  $id=intval(getInput('id'));
  $EditStudent=$db->fetchID("Ma",$id,"studentid");
  if(empty($EditStudent)){
    $_SESSION['error']="Dữ liệu không tồn tại";
    
  }
      
  $id_delete=$db->delete("Ma",$id,"studentid");
  if($id_delete>0){
            $_SESSION['success']="Đã xóa ";
            redirectAdmin("subjects/students.php");
  }
  else {
        $_SESSION['error']="Chưa xóa ";
            redirectAdmin("subjects/students.php");

  }
      
 ?>

