<?php 
    $open="exams";
    require_once __DIR__. '/../../load_database/loadData.php';
    $subject=$db->fetchAll("examdetail");
    
 ?>
<?php require_once __DIR__. '/../../layouts/header.php'; ?>
    <div id="content-wrapper">

      <div class="container-fluid">

        
        <!-- Page Content -->
        <h1>Danh sách kì thi  
            <a href="add.php" class="btn btn-success">Thêm mới </a>
        </h1>
        <br>
        <div class="clearfix"></div>

        <?php if (isset($_SESSION['success'])): ?>
            <div class="alert alert-success">
              <?php echo $_SESSION['success'];unset($_SESSION['success']) ?>
            </div>
        <?php endif ;?>

        <?php if (isset($_SESSION['error'])): ?>
            <div class="alert alert-danger">
              <?php echo $_SESSION['error'];unset($_SESSION['error']) ?>
            </div>
        <?php endif ;?>



      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->

      <div class="container-fluid">
        <table class="table table-bordered">
          <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Môn   </th>
              <th scope="col">Ngày thi </th>
              <th scope="col">Phòng thi </th>
              <th scope="col">Giờ bắt đầu </th>
              <th scope="col">Giờ kết thúc </th>
              <th scope="col">Action</th>

            </tr>
          </thead>
          <tbody>
            <?php $stt=1 ;foreach ($subject as $item): ?>
                <tr>
                  <td><?php echo $item['ExamDetailid'] ?></td>
                  <td> <?php echo $item['Sub']?></td>
                  <td> <?php echo $item['ExamDate']?></td>
                  <td><?php echo $item['ro'] ?></td>
                  <td><?php echo $item['TimeStart'] ?></td>
                  <td><?php echo $item['TimeEnd'] ?></td>
                  <td>
                    <a class="btn btn-xs btn-info" href="edit.php?id=<?php echo $item['ExamDetailid'] ?>">Sửa</a>
                    <a class="btn btn-xs btn-danger" href="delete.php?id=<?php echo $item['ExamDetailid'] ?>">Xóa</a>
                  </td>
                </tr>
            <?php $stt++;endforeach ?>
            
          </tbody>
        </table>


        <div class="pull-right">
        <nav aria-label="Page navigation">
          <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
          </ul>
        </nav>
      </div>
      </div>

      
<?php require_once __DIR__. '/../../layouts/footer.php'; ?>