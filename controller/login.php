<?php
include('model/User.php');
function login_page()
{
	include('view/login_page.php');
}
function do_login()
{
	$userId=$_POST['userId'];
	$password=$_POST['password'];
	$userModel=new User();
	$user=$userModel->verify($userId,$password);
	echo $user['id'];
	if($user)
	{
		session_start();
		$_SESSION['user']=$user;
		if($user['role']=='teacher')
		{
			header('Location: /index.php?r=teacher/home');
		}
		else if($user['role']=='student')
		{
			header('Location: /index.php?r=student/home');
		}
	}
	
}