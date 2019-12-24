
<?php 
  $open="exams";
  require_once __DIR__. '/../../load_database/loadData.php';
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
          
          
          $id_insert=$db->insert("examdetail",$data);

          if ($id_insert>0) {
    
            $_SESSION['success']="Thêm thành công ";
            redirectAdmin("exams");
          }
          else {
            $_SESSION['error']="Thêm thất bại ";
            redirectAdmin("exams");
          }
        }

    }
 ?>

<?php require_once __DIR__. '/../../layouts/header.php'; ?>
    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Page Content -->
        <h1>Thêm kì thi </h1>
      
        <div class="row">
        <div class="col-md-12">
            <form method="POST" action="">
              <div class="form-group">
                  <label for="subjectInput" >Môn thi  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập môn thi   " name="subject">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["subject"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["subject"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Ngày thi  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="yyyy/mm/dd " name="date">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["date"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["date"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Phòng thi   </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập phòng thi  " name="room">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["room"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["room"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>



              <div class="form-group">
                
                  <label for="subjectInput" >Giờ bắt đầu  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="hh:mm:ss  " name="start"  >
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["start"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["start"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Giờ kết thúc  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="hh:mm:ss" name="end">
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
              
              <button type="submit" class="btn btn-success ">Add</button>
            </form>
        </div>
      </div>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->

      
<?php require_once __DIR__. '/../../layouts/footer.php'; ?>