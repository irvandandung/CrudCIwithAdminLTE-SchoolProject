<!DOCTYPE html>
<html>
<head>
	<title>Menampilkan| tabel user</title>
	 <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?php echo base_url()?>assets/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url()?>assets/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url()?>assets/adminlte/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url()?>assets/adminlte/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url()?>assets/adminlte/plugins/iCheck/square/blue.css">

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
	<form class="login-box">
		<table border=5 cellpadding=10 cellspacing=15 align="center">
			<tr>
				<th>Nomor</th>
				<th>Username</th>
				<th>Fullname</th>
				<th>Password</th>
				<th>Level</th>
				<th>Aksine</th>
			</tr>
				<?php
				$nomor = 1;
				foreach ($tbuser as $row) {
				?>
				<tr>
					<td><?php echo $nomor++;?></td>
					<td><?php echo $row->username?></td>
					<td><?php echo $row->fullname?></td>
					<td><?php echo $row->password?></td>
					<td><?php echo $row->level?></td>
					<td><a href="<?php echo base_url('index.php/user/del/'.$row->id); ?>">Hapus</a> | <a href="#">Edit</a></td>
				</tr>
				<?php
				}
				?>
			</table>
			<a href="<?php echo base_url()?>" class="text-center">Mbalek meng form</a>
	</form>
</body>
</html>