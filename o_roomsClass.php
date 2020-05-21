<?php 
include_once "My_DBDirect.php";
include_once "create.php";

class o_rooms
{
	public $room_Id;
	public $guest_passport_Id;
	public $check_in;
	public $check_out;
	 

	public function getRoomID($room_idd)
	{
		$db= new db();
		$conn = $db->MakeConn();
		$sql="select id from room where room_number=$room_idd";
		$result = mysqli_query($conn,$sql);
		
		//print_r($result);

	}
	
	
}

?>