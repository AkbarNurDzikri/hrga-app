<?php

class Guest_model
{
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAll()
    {
        $this->db->query("SELECT * FROM guest ORDER BY timestamp DESC");
        return $this->db->resultSet();
    }

    public function store($data)
    {
        $query = "INSERT INTO guest VALUES ('', :tgl_kunjungan, :nama, :nama_perusahaan, :alamat_perusahaan, :personel_bfi, :tujuan_kunjungan, :dengan_janji, :kendaraan, :nomor_kendaraan, :signatured, :timestamp)";

        $this->db->query($query);
        $this->db->bind('tgl_kunjungan', $data['tgl_kunjungan']);
        $this->db->bind('nama', $data['nama']);
        $this->db->bind('nama_perusahaan', $data['nama_perusahaan']);
        $this->db->bind('alamat_perusahaan', $data['alamat_perusahaan']);
        $this->db->bind('personel_bfi', $data['personel_bfi']);
        $this->db->bind('tujuan_kunjungan', $data['tujuan_kunjungan']);
        $this->db->bind('dengan_janji', $data['dengan_janji']);
        $this->db->bind('kendaraan', $data['kendaraan']);
        $this->db->bind('nomor_kendaraan', $data['nomor_kendaraan']);
        $this->db->bind('signatured', 'signature-' . time() . '.svg');
      	$this->db->bind('timestamp', date('Y-m-d H:i:s'));

        $this->db->execute();

        return $this->db->rowCount();
    }

    public function update($data)
    {
        $query = "UPDATE master_depts SET
            dept_name = :dept_name
        WHERE id = :id
        ";

        $this->db->query($query);
        $this->db->bind('dept_name', $data['dept_name']);
        $this->db->bind('id', $data['id']);

        $this->db->execute();

        return $this->db->rowCount();
    }

    public function getDataById($id)
    {
        $this->db->query("SELECT * FROM guest WHERE id = :id");
        $this->db->bind('id', $id);
        return $this->db->single();
    }
}
