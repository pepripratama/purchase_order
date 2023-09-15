<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth_mobile extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $data['title'] = 'Login Page';
        $this->load->view('mobile/header.php', $data);
        $this->load->view('mobile/login.php');
        $this->load->view('mobile/footer.php');
    }

    public function login()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $where = array(
            'username' => $username,
            'password' => md5($password)
        );
        $user = $this->db->get_where('tb_user', $where);

        // jika usernya ada
        if ($user->num_rows() > 0) {
            $user = $user->row();
            $data = [
                'id' => $user->id,
                'username' => $user->username,
                'name' => $user->nama,
                'role_id' => $user->id_role,
                'login' => true,
            ];
            $this->session->set_userdata($data);
            if ($user->id_role == 1) {
                redirect(base_url('Dashboard'));
            } elseif ($user->id_role == 2) {
                redirect(base_url('Sales_order'));
            }
            
        } else {
            tampil_alert('error', 'Gagal !', 'Password atau Username yang anda masukkan salah');
            redirect(base_url('Auth_mobile'));
        }
    }
    public function logout()
    {
        $this->session->sess_destroy();
        tampil_alert('success', 'Berhasil', 'Anda telah logout');
        redirect(base_url('Auth_mobile'));
    }
    //  ganti password
    public function gantiPass()
    {
        $id_user = $this->session->userdata('id');
        $password = $this->input->post('pass');
        $data = array(
            'password' => md5($password)
        );
        $where = array(
            'id'    => $id_user
        );
        $this->db->update('tb_user', $data, $where);
        tampil_alert('success', 'BERHASIL', 'Password berhasil di ganti');
        redirect(base_url('Auth_mobile'));
    }
}
