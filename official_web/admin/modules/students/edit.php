
<?php 
  
  require_once __DIR__. '/../../load_database/loadData.php';

  $id=intval(getInput('id'));
  $EditStudent=$db->fetchID("students",$id,"studentid");
  if(empty($EditStudent)){
    $_SESSION['error']="Dữ liệu không tồn tại";
    redirectAdmin("students");
  }
      

    if ($_SERVER["REQUEST_METHOD"]=="POST") {
        $data=[
          "firstname"=>postInput('firstname'),
          "lastname"=>postInput('lastname'),
          "dateofbirth"=>postInput('dateOfBirth'),
          "mail"=>postInput('studentEmail'),
          "sex"=>postInput('sex'),
          "password"=>postInput('password')

        ];
        $error=[];
        if (postInput('firstname')=='') {
          $error['firstname']="Chưa điền tên  ";

        }
        if (postInput('lastname')=='') {
          $error['lastname']="Chưa điền họ ";

        }
        if (postInput('studentEmail')=='') {
          $error['studentEmail']="Chưa điền Email ";

        }
        if (postInput('dateOfBirth')=='') {
          $error['dateOfBirth']="Chưa điền ngày sinh ";

        }
        if (postInput('class')=='') {
          $error['class']="Chưa điền lớp ";

        }
        if (postInput('password')=='') {
          $error['class']="Chưa điền password ";

        }
        if (postInput('sex')=='') {
          $error['class']="Chưa điền giới tính ";

        }

        if (empty($error)) {
          $id_update=$db->update("students",$data,array("studentid"=>$id));
          if ($id_update>0) {
            $_SESSION['success']="Cập nhật thành công ";
            redirectAdmin("students");
          }
          else {
            $_SESSION['error']="Cập nhật thất bại ";
            redirectAdmin("students");
          }
        }

    }



      
 ?>

<?php require_once __DIR__. '/../../layouts/header.php'; ?>
    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="index.html">Dashboard</a>
          </li>

          <li class="breadcrumb-item">
            <a href="index.html">Sinh viên </a>
          </li>
          <li class="breadcrumb-item active">Chỉnh sửa</li>
        </ol>

        <!-- Page Content -->
        <h1>Sửa môn thi</h1>
        <br>
        <br>
        


        <div class="row">
        <div class="col-md-12">
            <form method="POST" action="">
              <div class="form-group">
                
                  <label for="subjectInput" >Họ  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập họ  " name="lastname" value="<?php echo $EditStudent['lastname'] ?>">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["lastname"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["lastname"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Tên  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập tên " name="firstname" value="<?php echo $EditStudent['firstname'] ?>">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["firstname"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["firstname"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Ngày sinh  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập tên " name="dateOfBirth"   value="<?php echo $EditStudent['dateofbirth'] ?>">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["dateOfBirth"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["dateOfBirth"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Giới tính  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập giới tính " name="sex"   value="<?php echo $EditStudent['sex'] ?>">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["sex"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["sex"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Email </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập Email" name="studentEmail"    value="<?php echo $EditStudent['mail'] ?>">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["studentEmail"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["studentEmail"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Password </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập password" name="password"    value="<?php echo $EditStudent['password'] ?>">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["password"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["password"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>

              <div class="form-group">
                
                  <label for="subjectInput" >Lớp  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập lớp  " name="class"    value="<?php echo $EditStudent['Classid'] ?>">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["class"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["class"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>
              
              <button type="submit" class="btn btn-success ">Edit</button>
            </form>
        </div>
      </div>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->

      
<?php require_once __DIR__. '/../../layouts/footer.php'; ?>