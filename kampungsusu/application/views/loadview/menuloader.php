  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?php echo base_url('assets/dist/img/sapi.png'); ?>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>KSA</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li><a href="<?php echo base_url('index.php/sensor/dashboard'); ?>"><i class="fa fa-dashboard"></i> <span>DASHBOARD</span></a></li>
          <li class="treeview">
          <a href="#">
            <i class="fa fa-line-chart"></i>
            <span>DATA GRAFIK</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url('index.php/sensor/suhu'); ?>"><i class="fa fa-circle-o"></i> GRAFIK SUHU</a></li>
          
          </ul>
        </li>
      <li><a href="<?php echo base_url('index.php/sensor/tabeldata'); ?>"><i class="fa fa-table"></i> <span>TABEL DATA</span></a></li>
        <li><a href="<?php echo base_url('index.php/sensor/pengaturan'); ?>"><i class="fa fa-gear"></i> <span>PENGATURAN</span></a></li>
        <li><a href="<?php echo base_url('index.php/sensor/logout'); ?>"><i class="fa fa-circle-o"></i> <span>LOGOUT</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    

    <!-- Main content -->
    <section class="content">
      <!-- Main row -->
      <div class="row">
