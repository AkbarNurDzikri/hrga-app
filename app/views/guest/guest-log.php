<div class="card">
  <div class="card-header">
    <div class="row">
      <div class="col">
        <table class="table table-hover">
          <caption>Daftar Tamu</caption>
          <thead>
            <tr>
              <th>No.</th>
              <th>Timestamp</th>
              <th>Tanggal Kunjungan</th>
              <th>Nama</th>
              <th>Perusahaan</th>
              <th>Sign</th>
              <th>Print</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1; ?>
            <?php foreach($data['data'] as $tamu) : ?>
              <tr>
                <td><?= $i++ ?></td>
                <td><?= date('d/m/Y H:i:s', strtotime($tamu['timestamp'])) . ' WIB' ?></td>
                <td><?= date('l, d/m/Y', strtotime($tamu['tgl_kunjungan'])) ?></td>
                <td><?= $tamu['nama']; ?></td>
                <td><?= $tamu['nama_perusahaan']; ?></td>
                <td>
                  <img src="<?= BASEURL . '/assets/img/guest-signatured/' . $tamu['signatured'] ?>" alt="">
                </td>
                <td><a href="<?= BASEURL ?>/guest/print/<?= $tamu['id'] ?>" target="_blank" class="btn btn-primary btn-sm">Print</a></td>
              </tr>
            <?php endforeach; ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>