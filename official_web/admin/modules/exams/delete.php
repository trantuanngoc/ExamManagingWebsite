
<?php 
  $open="exams";
  require_once __DIR__. '/../../load_database/loadData.php';

  $id=intval(getInput('id'));
  $EditSubject=$db->fetchID("examdetail",$id,"ExamDetailid");
  if(empty($EditSubject)){
    $_SESSION['error']="Dữ liệu không tồn tại";
    redirectAdmin("exams");
  }
      
  $id_delete=$db->delete("examdetail",$id,"ExamDetailid");
  if($id_delete>0){
            $_SESSION['success']="Đã xóa ";
            redirectAdmin("exams");
  }
  else {
        $_SESSION['error']="Chưa xóa ";
            redirectAdmin("exams");

  }
      
 ?>

