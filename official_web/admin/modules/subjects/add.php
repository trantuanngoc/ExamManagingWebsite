
<?php require_once __DIR__. '/../../layouts/header.php'; ?>
    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="index.html">Dashboard</a>
          </li>

          <li class="breadcrumb-item">
            <a href="index.html">Danh mục </a>
          </li>
          <li class="breadcrumb-item active">Thêm mới </li>
        </ol>

        <!-- Page Content -->
        <h1>Thêm môn thi</h1>
        <br>
        <br>
        


        <div class="row">
        <div class="col-md-12">
            <form method="POST">
              <div class="form-group">
                
                  <label for="exampleInputEmail1" >Môn thi </label>
                  <input type="email" class="form-control col-sm-6" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nhập môn thi ">
                  <small id="emailHelp" class="form-text text-muted">Hãy nhập theo cách của bạn</small>
              
              </div>
              
              <button type="submit" class="btn btn-success ">Add</button>
            </form>
        </div>
      </div>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->

      
<?php require_once __DIR__. '/../../layouts/footer.php'; ?>