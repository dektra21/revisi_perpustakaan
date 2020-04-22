<?php 



class Login_models
{
  private $tb = "auth",
  $db;

  public function __construct(){
    $this->db = new Database;
 }
 public function ambildata($validasi, $nilai){
    if (isset($validasi) && isset($nilai)) {
      $data="SELECT * FROM $this->tb WHERE $validasi =:$validasi";
      $this->db->query($data);
      $this->db->bind($validasi, $nilai);
      return $this->db->single();
   }
}
public function login($data){

 /*
 *
 * # kita ambil data user name dan masukkan ke variable username
 *
 *
  */
 $username = $data['username'];
 $password = $data['password'];

 /*
 *
 * # cek username ada atau tidak kosong 
 *
 *
  */
 if (isset($username) && $username !== ''){
    /*
    *
    * # ambil data dari username di database yng di inputkan jika ada tampilkan 
    *
    *
     */
   if ($datauser = $this->ambildata("username", ($username))){
       /*
       *
       * # ambik data password dan rolenya dari username yng dimasukkan 
       *
       *
        */
      $Uspw = $datauser["password"];
      $role = $datauser['id_level'];
      // var_dump($role);die;
      $nama = $datauser['nama'];
      if (isset($password) && $password !== '') {
         if (password_verify($password, $Uspw)) {
            if ($role == '1' || $role == 1) {
               session_start();
               $_SESSION['username'] = $username;
               $_SESSION['nama'] = $nama;
               $_SESSION['status'] = 'ada';
               $_SESSION['role'] = $role;
               Flasher::setFlash('Selamat Datang ', $username,'success');
               header('Location: '.BASEURL.'');
            }elseif ($role == '2' || $role == 2) {
               session_start();
               $_SESSION['username'] = $username;
               $_SESSION['nama'] = $nama;
               $_SESSION['status'] = 'ada';
               $_SESSION['role'] = $role;
               Flasher::setFlash('Selamat Datang ', $username,'success');
               header('Location: '.BASEURL.'/petugas');
            }
            elseif ($role == '3' || $role == 3) {
               session_start();
               $_SESSION['username'] = $username;
               $_SESSION['nama'] = $nama;
               $_SESSION['status'] = 'ada';
               $_SESSION['role'] = '3';
               Flasher::setFlash('Selamat Datang ', $username,'success');
               header('Location: '.BASEURL.'/homepage_user');
            }
         }else { // else cek password db
            Flasher::setFlash('Password Anda', ' Salah !! ','error');
            header('Location: '.BASEURL.'/home/page');
         }
      }else { // else cek password
         Flasher::setFlash('Username Dan Password', ' Harus Diisi !! ','error');
         header('Location: '.BASEURL.'/home/page');
      }
         }else{ //else cek data
            Flasher::setFlash('Username Anda ', 'Tidak Terdaftar !! ','error');
            header('Location: '.BASEURL.'/home/page');
         }
      }else { //else cek username
      	Flasher::setFlash('Username Dan Password', ' Harus Diisi !! ','error');
      	header('Location: '.BASEURL.'/home/page');
      }
   }
}
