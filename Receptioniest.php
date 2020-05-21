<?php 
include_once "My_DBDirect.php";
include_once "create.php";
include_once "o_roomsClass.php";

if(isset($_POST['method'])&& $_POST['method']== 'addguest' )
{

	$x= new Guest();
	$x->First_Name=$_POST['First_Name'];
	$x->Last_Name=$_POST['Last_Name'];
	$x->Family_Name=$_POST['Family_Name'];
	$x->Nationality=$_POST['Nationality'];
	$x->Age=$_POST['Age'];
	$x->Passport=$_POST['Passport'];
	$x->PhoneNumber=$_POST['Phone_Number'];
	$x->ArrivalDate=$_POST['Arrival_Date'];
	$x->ArrivalTime=$_POST['Arrival_Time'];
	$x->DepartureDate=$_POST['DepartureDate'];
	$x->DepartureTime=$_POST['DepartureTime'];
	$x->ArrivedFrom=$_POST['ArrivedFrom']; 
	$x->RoomNumber=$_POST['roomNum']; 
	$x->add($x);

}
else if(isset($_POST['method'])&& $_POST['method']== 'ReserveRoom' )
{

	$y= new Guest();//object from the func 
	$y->Family_Name=$_POST['Family_Name'];
	$y->RoomNumber=$_POST['RoomNumber'];
	$y->Room_Reservation($y);

}
else if(isset($_GET['method'])&& $_GET['method']== 'getAllRooms')
{
	$room=new room();
	$room->getAllRooms();
}


class Guest
{
	public $First_Name;
	public $Last_Name;
	public $Family_Name;
	public $Nationality;
	public $Age;	
	public $Passport;
	public $PhoneNumber;
	public $ArrivalDate;
	public $ArrivalTime;
	public $DepartureDate;
	public $DepartureTime;
	public $ArrivedFrom;
	public $RoomNumber;
	 

	public function add($Object)
	{
		$db= new db();
		$conn = $db->MakeConn();
		$sql="INSERT INTO `Guest`(`Guest_First_Name`, `Guest_Last_Name`, `Guest_Family_Name` ,`Guest_Nationality`, `Guest_Age`, `Guest_Passport`, 
		`Guest_PhoneNumber` , `Guest_ArrivedFrom`)
		VALUES ('".$Object->First_Name."','".$Object->Last_Name."','".$Object->Family_Name."' , '".$Object->Nationality."','".$Object->Age."',
		'".$Object->Passport."','".$Object->PhoneNumber."','".$Object->ArrivedFrom."')";
		mysqli_query($conn,$sql);

		$o_rooms= new o_rooms();
		$roomm=$o_rooms->getRoomID((int)$Object->RoomNumber);
		//echo $roomm;
		$sql2="INSERT into o_rooms (`room_Id`,`guest_passport_Id`,`check_in`,`check_out`,`Guest_ArrivalTime`,`Guest_DepartureTime`,confirmed) 
		values ($Object->RoomNumber,$Object->Passport,'$Object->ArrivalDate','$Object->DepartureDate' ,'$Object->ArrivalTime'
		,'$Object->DepartureTime',0)";
		mysqli_query($conn,$sql2);
		//echo $sql2;

	}

	
	
	
}

?>