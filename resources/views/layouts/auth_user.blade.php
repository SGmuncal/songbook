<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<!-- Custom fonts for this template-->
    <link href="{{asset('/auth_configuration_files/vendor/fontawesome-free/css/all.min.css')}}" rel="stylesheet" type="text/css">

 	<!-- Page level plugin CSS-->
    <link href="{{asset('/auth_configuration_files/vendor/datatables/dataTables.bootstrap4.css')}}" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="{{asset('/auth_configuration_files/css/sb-admin.css')}}" rel="stylesheet">
</head>
<style>
	* {
		border-radius: 0px !important;
	}
</style>
<body style="background-color:#f7f7f7;">

	@yield('content')


	<!-- Bootstrap core JavaScript-->
	<script src="{{asset('/auth_configuration_files/vendor/jquery/jquery.min.js')}}"></script>

	<script src="{{asset('/auth_configuration_files/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

	<!-- Core plugin JavaScript-->
	<script src="{{asset('/auth_configuration_files/vendor/jquery-easing/jquery.easing.min.js')}}"></script>

	<!-- Page level plugin JavaScript-->

	<script src="{{asset('/auth_configuration_files/vendor/datatables/jquery.dataTables.js')}}"></script>
	<script src="{{asset('/auth_configuration_files/vendor/datatables/dataTables.bootstrap4.js')}}"></script>

	<!-- Custom scripts for all pages-->
	<script src="{{asset('/auth_configuration_files/js/sb-admin.min.js')}}"></script>

	<!-- Demo scripts for this page-->
	<script src="{{asset('/auth_configuration_files/js/demo/datatables-demo.js')}}"></script>


	<script src="{{asset('/js/song_ajax.js')}}"></script>

</body>
</html>