<?php 
$page = $this->uri->segment(2);
include('loadview/cssloader.php');
include('loadview/headerloader.php');
include('loadview/menuloader.php');
include("$page".".php");
include('loadview/footerloader.php');
include('loadview/sidebarloader.php');
include('loadview/jsloader.php');
