<section class="content-header">
      <h1>
        Monitoring
        <small>Data Sensor</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url('index.php/sensor/dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>


<!-- START TO EDIT DASHBOARD ITEM 0 -->

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner flamevalue">
              <h3><div id="flamevalue"></div></h3>

              <p>FLAME</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="<?php echo base_url('index.php/sensor/tabeldata'); ?>" class="small-box-footer">cek data <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>

 <!-- FINISH TO EDIT DASHBOARD ITEM 0-->


 <!-- START TO EDIT DASHBOARD ITEM 1 -->

    <!-- Main content -->
         <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner suhu">
              <h3><div id="suhu"></div></h3>

              <p>SUHU</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="<?php echo base_url('index.php/sensor/suhu'); ?>" class="small-box-footer">cek grafik <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>

 <!-- FINISH TO EDIT DASHBOARD ITEM 1 -->



 <!-- START TO EDIT DASHBOARD ITEM 2 -->

        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner gasvalue ">
              <h3><div id="gasvalue"></div></h3>

              <p>GAS</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="<?php echo base_url('index.php/sensor/tabeldata'); ?>" class="small-box-footer">cek data<i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
<!-- FINISH TO EDIT DASHBOARD ITEM 2 -->




     </section>
    <!-- /.content -->


<!-- /. end content CLASS -->
</div>

 





  <script>
   $(document).ready(function() {
       function count() {
           $('#suhu').load("http://localhost/kampungsusu/apirecieve/asuhu.php");
           $('#gasvalue').load("http://localhost/kampungsusu/apirecieve/agasvalue.php");
           $('#flamevalue').load("http://localhost/kampungsusu/apirecieve/aflamevalue.php");
       }
       var auto_refresh = setInterval(count, 5000);
       count();
   });
</script>