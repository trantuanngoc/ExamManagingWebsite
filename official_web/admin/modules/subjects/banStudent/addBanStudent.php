
<?php 
  $open="subjects";
  require_once __DIR__. '/../../../load_database/loadData.php';
    if ($_SERVER["REQUEST_METHOD"]=="POST") {
        $data=[
          "firstname"=>postInput('firstname'),
          "lastname"=>postInput('lastname'),
          "dateofbirth"=>postInput('dateOfBirth'),
          "mail"=>postInput('studentEmail'),
          "sex"=>postInput('sex'),
          "password"=>postInput('password'),
          "Classname"=>postInput('class')

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
        if (postInput('class')=='') {
          $error['class']="Chưa điền lớp ";
        }

        if (empty($error)) {
          
          $id_insert=$db->insert("Lit",$data);
        
          if ($id_insert>0) {
    
            $_SESSION['success']="Thêm thành công ";
            redirectAdmin("subjects/banStudent");
          }
          else {
            $_SESSION['error']="Thêm thất bại ";
            redirectAdmin("subjects/banStudent");
          }
        }

    }
 ?>

<?php require_once __DIR__. '/../../../layouts/header.php'; ?>
    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Page Content -->
        <h1>Thêm sinh viên</h1>
      
        <div class="row">
        <div class="col-md-12">
            <form method="POST" action="">
              <div class="form-group">
                  <label for="subjectInput" >Họ  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập họ  " name="lastname">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["lastname"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["lastname"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Tên  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập tên " name="firstname">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["firstname"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["firstname"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Ngày sinh  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập tên " name="dateOfBirth">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["dateOfBirth"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["dateOfBirth"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>



              <div class="form-group">
                
                  <label for="subjectInput" >Giới tính  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập giới tính " name="sex"  >
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["sex"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["sex"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Email </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập Email" name="studentEmail">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["studentEmail"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["studentEmail"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>


              <div class="form-group">
                
                  <label for="subjectInput" >Password </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập password" name="password"    >
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["password"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["password"] ?>
                        
                    </p>
                  <?php endif ?>

              </div>

              <div class="form-group">
                
                  <label for="subjectInput" >Lớp  </label>
                  <input type="text" class="form-control col-sm-6" id="subjectInput" aria-describedby="emailHelp" placeholder="Nhập lớp  " name="class">
                  <!-- <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small> -->
                  
                  <?php if (isset($error["class"])): ?>
                    <p class="text-danger">
                      <?php  echo $error["class"] ?>
                        
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

      
<?php require_once __DIR__. '/../../../layouts/footer.php'; ?>