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
		// $data = json_decode(file_get_contents('php://input'));
		$data = json_decode($_POST['signatured']);
		$image = $data->signatured;
		$time = time();
		file_put_contents("assets/img/guest-signatured/signature-$time.svg", $image);

		$execute  = $this->model('guest_model')->store($_POST);
		if($execute > 0) {
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