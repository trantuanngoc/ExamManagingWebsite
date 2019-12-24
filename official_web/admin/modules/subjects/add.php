
<?php 
  $open="subjects";
  require_once __DIR__. '/../../load_database/loadData.php';
    if ($_SERVER["REQUEST_METHOD"]=="POST") {
        $data=[
          "SubjectName"=>postInput('name'),
          "TimeExam"=>postInput('time')
        ];
        $error=[];
        if (postInput('name')=='') {
          $error['name']="Chưa điền tên môn ";

        }
        if (postInput('time')=='') {
          $error['time']="Chưa điền thời gian ";

        }

        if (empty($error)) {
          $id_insert=$db->insert("subject",$data);
          if ($id_insert>0) {
            $_SESSION['success']="Thêm thành công ";
            redirectAdmin("subjects");
          }
          else {
            $_SESSION['error']="Thêm thất bại ";
          }
        }

    }
 ?>

<?php require_once __DIR__. '/../../layouts/header.php'; ?>
    <div id="content-wrapper">

      <div class="container-fluid">


        <!-- Page Content -->
        <h1>Thêm môn thi</h1>
        <br>
        <br>
        


        <div class="row">
        <div class="col-md-12">
            <form method="POST" action="">
              <div class="form-group">
                
                  <label for="subjectInput" >Môn thi </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập môn thi " name="name">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["name"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["name"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Thời gian kiểm tra </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập thời gian " name="time">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["time"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["time"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>
              
              <button type="submit" class="btn btn-success ">Add</button>
            </form>
        </div>
      </div>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->

      
<?php require_once __DIR__. '/../../layouts/footer.php'; ?>