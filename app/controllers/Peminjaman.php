<?php 


class Peminjaman extends Controller
{

    public function index(){
        $data['judul'] = "Daftar Peminjaman | SMKN 1 DENPASAR";
        $this->view('template/header',$data);
        $this->view('perpustakaan/peminjaman/index',$data);
        $this->view('template/footer');
    }
    
}