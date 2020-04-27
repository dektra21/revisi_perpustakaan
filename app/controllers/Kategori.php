<?php 

class Kategori Extends Controller
{
    public function index()
    {
        $data['judul'] = "Kategori & Kode Buku | SMKN 1 DENPASAR";
        $this->view('template/header',$data);
        $this->view('perpustakaan/kategori/index',$data);
        $this->view('template/footer');
    }
}