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
            <title>Print Cuti Saya</title>
            <link rel="stylesheet" media="print" href="'. BASEURL . "/assets/css/css-for-pdf/style-pdf.css" .'" />
            <style media="print">                
                table, th, td {
                  border: 1px solid black;
                  border-collapse: collapse;
                  text-align: center;
                }
                
                th {
                	color: white;
                }
            </style>
          </head>
          <body>
          <img src="'. BASEURL .'/assets/img/logo/logo-bfi-full-transparent.png" style="width: 30%;">
          <h2 style="text-align: center;"><u>Data Cuti Karyawan</u></h2>
          <h4 style="margin-top: 20px;">'.$_SESSION['userInfo']['emp_name'] . ' (' . $_SESSION['userInfo']['dept_name'] .' '. $_SESSION['userInfo']['position_name'] . ')' .'</h4>
          <table border="1">
            <tr style="background-color: #0066b2;">
              <th>No.</th>
              <th>Tgl Permohonan</th>
              <th>Tgl Cuti</th>
              <th>Jenis Cuti</th>
              <th>Keterangan Cuti</th>
              <th>Status</th>
            </tr>';
			$no = 1;
			foreach($data['myLeaveHistory'] as $data) {
              $html .= '<tr>
                        	<td>'.$no++.'</td>
                            <td>'.date('d/m/y H:i', strtotime($data['created_at'])).'</td>
                            <td>'.date('d/m/Y', strtotime($data['start_date'])) .' s.d. '. date('d/m/Y', strtotime($data['end_date'])) . ' (' . $data['number_of_day'] .' Hari)' .'</td>
                            <td>'.$data['leave_type'].'</td>
                            <td>'.$data['leave_reason'].'</td>
                            <td>'.$data['status'].' (' .date('d/m/y H:i', strtotime($data['updated_at'])). ')' .'</td>
                        </tr>';
            }
$html .= '</table> <p style="text-align: right; margin-top: 20px;"><i>Printed on: '. date('d/m/Y H:i') .' WIB</i></p>
		</body>
        </html>';
$mpdf->WriteHTML($html);
$mpdf->Output();