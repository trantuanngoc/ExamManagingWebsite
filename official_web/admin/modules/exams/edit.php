
<?php 
  $open="exams";
  require_once __DIR__. '/../../load_database/loadData.php';

  $id=intval(getInput('id'));
  $EditExams=$db->fetchID("examdetail",$id,"ExamDetailid");
  if(empty($EditExams)){
    $_SESSION['error']="Dữ liệu không tồn tại";
    redirectAdmin("exams");
  }
      

    if ($_SERVER["REQUEST_METHOD"]=="POST") {
        $data=[
          "Sub"=>postInput('subject'),
          "ExamDate"=>postInput('date'),
          "ro"=>postInput('room'),
          "TimeStart"=>postInput('start'),
          "TimeEnd"=>postInput('end'),
          
        ];
        
        $error=[];
        if (postInput('subject')=='') {
          $error['subject']="Chưa điền môn  ";

        }
        if (postInput('date')=='') {
          $error['date']="Chưa điền họ ";

        }
        if (postInput('room')=='') {
          $error['room']="Chưa điền Email ";

        }
        if (postInput('start')=='') {
          $error['start']="Chưa điền ngày sinh ";

        }
        if (postInput('end')=='') {
          $error['end']="Chưa điền lớp ";

        }

        if (empty($error)) {
          $id_update=$db->update("examdetail",$data,array("ExamDetailid"=>$id));
          if ($id_update>0) {
            $_SESSION['success']="Cập nhật thành công ";
            redirectAdmin("exams");
          }
          else {
            $_SESSION['error']="Cập nhật thất bại ";
            redirectAdmin("exams");
          }
        }

    }



      
 ?>

<?php require_once __DIR__. '/../../layouts/header.php'; ?>
    <div id="content-wrapper">

      <div class="container-fluid">

       

        <!-- Page Content -->
        <h1>Sửa kì thi </h1>
        
        <div class="row">
        <div class="col-md-12">
            <form method="POST" action="">
              <div class="form-group">
                  <label for="subjectInput" >Môn thi  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập môn thi   " name="subject" value="<?php echo $EditExams['Sub'] ?>">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["subject"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["subject"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Ngày thi  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="yyyy/mm/dd " name="date" value="<?php echo $EditExams['ExamDate'] ?>">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["date"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["date"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Phòng thi   </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập phòng thi  " name="room"   value="<?php echo $EditExams['ro'] ?>">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["room"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["room"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>



              <div class="form-group">
                
                  <label for="subjectInput" >Giờ bắt đầu  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="hh:mm:ss  " name="start"  value="<?php echo $EditExams['TimeStart'] ?>">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["start"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["start"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Giờ kết thúc  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="hh:mm:ss" name="end"  value="<?php echo $EditExams['TimeEnd'] ?>">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["end"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["end"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <!-- <div class="form-group">
                
                  <label for="subjectInput" >Password </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập password" name="password"    >
                  <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small>
                  
                  <?php if (isset($error["password"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["password"] ?>
                        
                    </p>
                  <?php endif ?>
              
              </div>
              
              <div class="form-group">
                
                  <label for="subjectInput" >Lớp  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập lớp  " name="class">
                  <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small>
                  
                  <?php if (isset($error["class"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["class"] ?>
                        
                    </p>
                  <?php endif ?>
              
              </div> -->
              
              <button type="submit" class="btn btn-success ">Edit</button>
            </form>
        </div>
      </div>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->

      
<?php require_once __DIR__. '/../../layouts/footer.php'; ?>