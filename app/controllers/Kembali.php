<?php 


class Kembali extends Controller
{

    public function index(){
        $data['judul'] = "Daftar Buku Kembali | SMKN 1 DENPASAR";
        $this->view('template/header',$data);
        $this->view('perpustakaan/kembali/index',$data);
        $this->view('template/footer');
    }
    
}
