<?php

class Guest extends Controller
{
	public function index()
	{
		$data = [
				'title' => 'Guest Book'
		];

		$this->view('guest/index', $data);
	}

	public function store()
	{
		$data_uri = $_POST['signatured'];
		$encoded_image = explode(",", $data_uri)[1];
		$encoded_image = str_replace(' ', '+', $encoded_image);
		$decoded_image = base64_decode($encoded_image);
		

		$execute  = $this->model('guest_model')->store($_POST);
		if($execute > 0) {
			file_put_contents('assets/img/guest-signatured/' . 'signature-' . time() . '.png', $decoded_image);
			echo 'success';
		} else {
			echo 'failed';
		}
	}

	public function log()
	{
      if(!isset($_SESSION['userInfo'])) {
        header('Location: ' . BASEURL);
      } else {
		$data = [
			'title' => 'Visitor Log',
			'data' => $this->model('guest_model')->getAll()
		];

		$this->view('templates/header', $data);
		$this->view('guest/guest-log', $data);
		$this->view('templates/footer');
      }
	}

	public function print($id) {
		$data = [
			'guest' => $this->model('guest_model')->getDataById($id),
		];
		
		$this->view('guest/print-guest', $data);
	}
}