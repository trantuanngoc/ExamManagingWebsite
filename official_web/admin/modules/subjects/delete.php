
<?php 
  
  require_once __DIR__. '/../../load_database/loadData.php';

  $id=intval(getInput('id'));
  $EditSubject=$db->fetchID("subject",$id,"SubjectID");
  if(empty($EditSubject)){
    $_SESSION['error']="Dữ liệu không tồn tại";
    redirectAdmin("subjects");
  }
      
  $id_delete=$db->delete("subject",$id,"SubjectID");
  if($id_delete>0){
            $_SESSION['success']="Đã xóa ";
            redirectAdmin("subjects");
  }
  else {
        $_SESSION['error']="Chưa xóa ";
            redirectAdmin("subjects");

  }
      
 ?>

