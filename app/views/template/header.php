<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title><?= $data['judul']; ?></title>
  <link href="<?= BASE_URL ?>/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="<?= BASE_URL ?>/css/style.css" rel="stylesheet">
  

</head>

<body id="page-top">

  <div id="wrapper">

    <ul class="side-nav bg-utama sidebar sidebar-gelap toggle toggled">

      <a class="sidebar-judul d-flex justify-content-center" href="index.html">
        <div class="sidebar-icon rotate-n-15">
          <i class="fas fa-book"></i>
        </div>
        <div class="judul mx-3">Pepustakaan Skensa</div>
      </a>

      <hr class="garis-h my-0">

      <li class="nav-item active">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
        </li>

        <hr class="garis-h">

        <div class="sub-judul">
          Fiture
        </div>

        <li class="nav-item">
          <a class="nav-link" href="<?= BASEURL ?>/buku">
            <i class="fas fa-fw fa-book"></i>
            <span>Daftar Buku</span></a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="peminjaman.html">
              <i class="fas fa-fw fa-list"></i>
              <span>Tambah Data</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pengembalian.html">
                <i class="fas fa-fw fa-users" ></i>
                <span>User</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="pengembalian.html">
                  <i class="fas fa-fw fa-sign-out-alt" ></i>
                  <span>Peminjaman</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="pengembalian.html">
                    <i class="fas fa-fw fa-check" ></i>
                    <span>Pengambalian</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="pengembalian.html">
                      <i class="fas fa-fw fa-download" ></i>
                      <span>Generate Laporan</span></a>
                    </li>

                    <hr class="garis-h d-none d-md-block">

                    <!-- Sidebar Toggler (Sidebar) -->
                    <div class="text-center d-none d-md-inline">
                      <button class="rounded-circle border-0" id="sidebarToggle"></button>
                    </div>

                  </ul>

                  <div id="content-wrapper" class="d-flex flex-column">
                    <div id="content">

                      <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btntop btn-link d-md-none rounded-circle mr-3">
                          <i class="fa fa-bars"></i>
                        </button>
                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">
                          <div class="topbar-divider d-none d-sm-block"></div>
                          <li class="nav-item dropdown no-arrow">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Wahyu Purnama</span>
                            <img class="img-profile rounded-circle" src="<?= BASE_URL ?>/img/asset/wahyu.jpg">
                          </li>

                        </ul>
                      </nav>