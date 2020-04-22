<?php 

class Perpustakaan Extends Controller
{
    public function index()
    {
        $data['judul'] = "Dashboard | SMKN 1 DENPASAR";
        $this->view('template/header',$data);
        $this->view('perpustakaan/index',$data);
        $this->view('template/footer');
    }
}
