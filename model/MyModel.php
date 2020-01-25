<?php
	class MyModel
	{
		function insertstudent($regno,$name,$mobile,$department,$course,$email,$semesterno,$year,$user,$pass)
		{
			include '../config/connection.php';
			$sql="INSERT INTO student(RegisterNo,Name,Mobile,Department,Course,Email,SemesterNo,Year,Username,Password) VALUES ('".$regno."','".$name."','".$mobile."','".$department."','".$course."','".$email."','".$semesterno."','".$year."','".$user."','".$pass."')";
			if(mysqli_query($conn,$sql))
			{
				#sheader('location:registerstudents.php');
			}
			else
			{
				echo 'error';
			}
		}
		function logincheck($uname,$pwd)
		{
			include '../config/connection.php';
			$sql="SELECT * FROM admin WHERE Username='".$uname."' AND Password='".$pwd."'";
			$result=mysqli_query($conn,$sql);
			if(mysqli_num_rows($result)>0)
			{
				while($row=mysqli_fetch_assoc($result))
				{
					header('location:adminhome.php');
				}
			}
			else
			{
				$sql1="SELECT * FROM student WHERE Username='".$uname."' AND Password='".$pwd."'";
				$result=mysqli_query($conn,$sql1);
				if(mysqli_num_rows($result)>0)
				{
					while($row=mysqli_fetch_assoc($result))
					{
						session_start();
						$_SESSION['id']=$row['Sid'];
						header('location:studenthome.php');
					}
				}
				else
				{
					$sql2="SELECT * FROM superadmin WHERE Username='".$uname."' AND Password='".$pwd."'";
					$result2=mysqli_query($conn,$sql2);
					if(mysqli_num_rows($result2)>0)
					{
						while($row2=mysqli_fetch_assoc($result2))
						{
							header('location:superadmin.php');
						}
					}
					else
					{
						echo 'Username or Password incorrect';
					}
				}	
			}
		}
		
		function changepwd($user,$email,$pwd)
		{
			include '../config/connection.php';
			$sql="UPDATE student SET Password='".$pwd."' WHERE Username='".$user."' AND Email='".$email."'";
			if(mysqli_query($conn,$sql))
			{
				
					header('location:login.php');
			}
			else
			{
				echo 'error';
			}
		}
		
		
		function addcourse($coursename,$deptname)
		{
			include '../config/connection.php';
			$sql="INSERT INTO course(Coursename,Deptname) VALUES ('".$coursename."','".$deptname."')";
			if(mysqli_query($conn,$sql))
			{
				header('location:addcourse.php');
			}
			else
			{
				echo 'error';
			}
		}
		
		function addmark($regno,$sid,$course,$name,$subject,$result,$credit,$totalgpa)
		{
			include '../config/connection.php';
			$sql="INSERT INTO result(RegisterNo,Sid,Course,Name,Subject,Result,Credits,TotalGPA) VALUES ('".$regno."','".$sid."','".$course."','".$name."','".$subject."','".$result."','".$credit."','".$totalgpa."')";
			if(mysqli_query($conn,$sql))
			{
				header('location:addmarks.php');
			}
			else
			{
				echo 'error';
			}
			
		}
		
		function addsubject($course,$dept,$subname,$subcode,$sem,$credits)
		{
			include '../config/connection.php';
			$sql="INSERT INTO subject(Course,Department,Subjectname,Subjectcode,Semester,Credits) VALUES ('".$course."','".$dept."','".$subname."','".$subcode."','".$sem."','".$credits."')";
			if(mysqli_query($conn,$sql))
			{
				#header('location:addsubject.php');
			}
			else
			{
				echo 'error';
			}
			
		}
		
		function updateuser($user)
		{
			include '../config/connection.php';
			$sql="UPDATE registration SET Username='".$user."' WHERE id=1";
			if(mysqli_query($conn,$sql))
			{
				echo 'success';
			}
			else
			{
				echo 'error';
			}
		}
		function studentprofile($id)
		{
			include '../config/connection.php';
			$sql="SELECT * from student WHERE Sid='".$id."'";
			$result=(mysqli_query($conn,$sql));
			return $result;
		}
		function getdepartment($id)
		{
			include '../config/connection.php';
			$sql="SELECT * FROM student where Sid='".$id."'";
			$result=mysqli_query($conn,$sql);
			return $result;
		}
		function StudSubject($dept)
		{
			include '../config/connection.php';
			$sql="SELECT * FROM subject where Department='".$dept."'";
			$result=mysqli_query($conn,$sql);
			return $result;
		}
		function studentresult($id)
		{
			include '../config/connection.php';
			$sql="SELECT * FROM result where Sid='".$id."'";
			$result=mysqli_query($conn,$sql);
			return $result;
		}
		function addadmin($user,$pwd)
		{
			include '../config/connection.php';
			$sql="INSERT INTO admin(Username,Password) VALUES ('".$user."','".$pwd."')";
			if(mysqli_query($conn,$sql))
			{
				header('location:addadmin.php');
			}
			else
			{
				echo 'error';
			}
			
		}
		function viewadmin()
		{
			include '../config/connection.php';
			$sql="SELECT * FROM admin";
			$result=mysqli_query($conn,$sql);
			return $result;
		}
		function removeadmin($id)
		{
			include '../config/connection.php';
			$sql="DELETE FROM admin WHERE Id=$id";
			if(mysqli_query($conn,$sql))
			{
				header('location:viewadmin.php');
			}
			else
			{
				echo 'error';
			}
			
		}
		
		function removestudent($id)
		{
			include '../config/connection.php';
			$sql="DELETE FROM student WHERE Sid=$id";
			if(mysqli_query($conn,$sql))
			{
				
			}
			else
			{
				echo 'error';
			}
			
		}
		function addtimetable($day,$dept,$h1,$h2,$h3,$h4,$adminid,$sem)
		{
			include '../config/connection.php';
			$sql="INSERT INTO timetable(Day,Department,Hour1,Hour2,Hour3,Hour4,Adminid,SemesterNo) VALUES ('".$day."','".$dept."','".$h1."','".$h2."','".$h3."','".$h4."','".$adminid."','".$sem."')";
			if(mysqli_query($conn,$sql))
			{
				#header('location:addsubject.php');
			}
			else
			{
				echo 'error';
			}
			
		}
		
		function studenttimetable($dept,$sem)
		{
			include '../config/connection.php';
			$sql="SELECT * FROM timetable where Department='".$dept."' AND SemesterNo='".$sem."'";
			$result=mysqli_query($conn,$sql);
			return $result;
		}
		
		function selectusers()
		{
			include '../config/connection.php';
			$sql="SELECT * FROM registration";
		}	
 
	}
?>
					