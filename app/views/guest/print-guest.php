<?php
//var_dump(dirname(__DIR__, 3) . '/public/assets/vendor/autoload.php');
require_once dirname(__DIR__, 3) . '/public/assets/vendor/autoload.php';

$mpdf = new \Mpdf\Mpdf();
$html = '<!DOCTYPE html>
          <html lang="en">
          <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Guest Permission Form</title>
            <link rel="stylesheet" media="print" href="'. BASEURL . "/assets/css/css-for-pdf/style-pdf.css" .'" />
          </head>
          <body>
            <table border="0" style="border-collapse: collapse; margin-left: auto; margin-right: auto;">
              <tr>
                <td style="width: 340px; text-align: left;">
                  <img src="'. BASEURL .'/assets/img/logo/logo-bfi-full-transparent.png" style="width: 35%;">
                </td>
                <td></td>
                <td style="width: 340px; text-align: right">
                  <img src="'. BASEURL .'/assets/img/logo/doc-no.png" style="width: 20%;">
                </td>
              </tr>
              <tr>
                <td colspan="3" style="padding-top: 20px; text-align: center;">
                  <h3>SURAT TAMU</h3>
                </td>
              </tr>
              <tr>
                <td colspan="3" style="text-align: center;"><h4><i>Guest Permission Form</i></h4></td> <hr>
              </tr>
              <tr>
                <td><b>Tanggal Kunjungan</b> <br> <i>Visite Date</i></td>
                <td colspan="2">: '.date('l, d-m-Y', strtotime($data['guest']['tgl_kunjungan'])).'</td>
              </tr>
              <tr>
                <td style="padding-top: 10px;"><b>Nama Tamu</b> <br> <i>Visitor Name</i></td>
                <td colspan="2">: '.$data['guest']['nama'].'</td>
              </tr>
              <tr>
                <td style="padding-top: 10px;"><b>Nama Perusahaan</b> <br> <i>Company Name</i></td>
                <td colspan="2">: '.$data['guest']['nama_perusahaan'].'</td>
              </tr>
              <tr>
                <td style="padding-top: 10px;"><b>Alamat Perusahaan</b> <br> <i>Company Address</i></td>
                <td colspan="2">: '.$data['guest']['alamat_perusahaan'].'</td>
              </tr>
              <tr>
                <td style="padding-top: 10px;"><b>Nama Personel BFI</b> <br> <i>Contact Person BFI</i></td>
                <td colspan="2">: '.$data['guest']['personel_bfi'].'</td>
              </tr>
              <tr>
                <td style="padding-top: 10px;"><b>Tujuan Kunjungan</b> <br> <i>Purpose of Visit</i></td>
                <td colspan="2">: '.$data['guest']['tujuan_kunjungan'].'</td>
              </tr>
              <tr>
                <td style="padding-top: 10px;"><b>Dengan Perjanjian</b> <br> <i>Appointment</i></td>
                <td colspan="2">: '.$data['guest']['dengan_janji'].'</td>
              </tr>
              <tr>
                <td style="padding-top: 10px;"><b>Kendaraan</b> <br> <i>Vehicle</i></td>
                <td colspan="2">: '.$data['guest']['kendaraan'].'</td>
              </tr>
              <tr>
                <td style="padding-top: 10px;"><b>Nomor Kendaraan</b> <br> <i>Vehicle Registration Number</i></td>
                <td colspan="2">: '.$data['guest']['nomor_kendaraan'].'</td>
              </tr>
              <tr>
                <td colspan="3" style="padding-top: 10px;"><b>Syarat & Ketentuan :</b> <br> <i>Terms & Condition :</i></td>
              </tr>
              <tr>
                <td colspan="3" style="padding-top: 5px;">Dengan menandatangani dokumen ini, saya menyatakan : <br> <i>By signing this document, I declare :</i></td>
              </tr>
              <tr>
                <td colspan="3" style="padding-top: 5px;">
                  <ol>
                    <li>Bersedia mematuhi semua peraturan dan rambu keamanan yang berlaku di PT Blasfolie Internasional Indonesia. <br> <i>&nbsp; &nbsp; Willing to comply with all safety rules and signs that apply at PT. Blasfolie Internasional Indonesia.</i></li> <br>
                    <li>Menyatakan sehat dan tidak berpenyakit menular khusus (Covid 19, TBC, Flu Berat, Hepatitis, dsb.). <br> <i>&nbsp; &nbsp; Declare healthy and not suffer from special infectious diseases (Covid 19, TB, Severe Flu, Hepatitis, etc.).</i></li>
                  </ol>
                </td>
              </tr>
              <tr>
                <td colspan="3" style="padding-top: 50px; padding-bottom: 25px; text-align: right;"><i>Printed on : '. date('d/m/Y H:i') . ' WIB' .'</i></td>
              </tr>
              <tr>
                <td style="padding-right: 150px; text-align: center;">
                  <b>Tamu</b> <br> <i>Visitor</i>
                </td>
                <td style="text-align: center;">
                  <b>Penerima</b> <br> <i>Recipient</i>
                </td>
                <td style="padding-left: 150px; text-align: center;">
                  <b>Petugas Keamanan</b> <br> <i>Security</i>
                </td>
              </tr>
              <tr>
                <td style="padding-right: 150px; padding-top: 10px; text-align: center;">
                  <img src="'. BASEURL . '/assets/img/guest-signatured/' . $data['guest']['signatured'] .'"style="width: 25%;">
                </td>
                <td style="text-align: center; padding-top: 100px;">
                  <hr>
                </td>
                <td style="padding-left: 150px; padding-top: 100px; text-align: center;">
                  <hr>
                </td>
              </tr>
            </table>
          </body>
        </html>';
$mpdf->WriteHTML($html);
$mpdf->Output();
?>