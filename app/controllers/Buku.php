<?php 


class Buku extends Controller
{

    public function index(){
        $data['judul'] = "Daftar Buku | SMKN 1 DENPASAR";
        $this->view('template/header',$data);
        $this->view('perpustakaan/buku/index',$data);
        $this->view('template/footer');
    }
    
}
