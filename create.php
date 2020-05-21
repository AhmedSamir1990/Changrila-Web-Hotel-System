
<?php 
include_once "My_DBDirect.php";

  
    
    if(isset($_GET['method']) && $_GET['method']=="getRoomType")
    {
        $room = new room();
        $room->getRoomType();
    }
    else if(isset($_GET['method']) && $_GET['method']=="checkRoom")
    {
        $room = new room();
        $room->checkRoom();
    }
    else if(isset($_POST['method']) && $_POST['method']=="insertRoom")
    {
        $room = new room();
        print_r($_POST);
        $room->roomNum = $_POST['roomNum'];
        $room->roomType = $_POST['roomType'];
        $room->roomPrice = $_POST['roomPrice'];
        $room->roomView = $_POST['roomView'];
        $room->insertRoom($room);
    }

    class room
    {
        public $roomNum;
        public $roomType;
        public $roomPrice;
        public $roomView;


        function getRoomType() 
        {
            $db=new db();
            $conn=$db->MakeConn();
            $rooms=array();
            $sql = "SELECT * FROM roomtypes";
            $result = mysqli_query($conn, $sql);
            if ($result->num_rows > 0)
            {
                while($row = $result->fetch_assoc())
                {
                    array_push($rooms, $row);
                }
            }
            echo json_encode($rooms);
        }

        function insertRoom($room)
        {
            $db=new db();
            $conn=$db->MakeConn();
            $sql = "INSERT INTO room (room_number, room_type_id,is_occupied,price,room_view,is_deleted) VALUES ($room->roomNum,$room->roomType,0
            ,$room->roomPrice,'$room->roomView',0)";

            
            $result = mysqli_query ($conn, $sql) ;
        }

        function checkRoom()
        {
            $db=new db();
            $conn=$db->MakeConn();
            $roomNum = $_GET['roomNum'];
            $sql="SELECT * FROM `room` WHERE room_number ='".$roomNum."'And is_occupied=0";
            $rooms=array();
            $result= mysqli_query($conn, $sql);
            if (mysqli_num_rows($result)==0)
            {
                array_push($rooms,0);
            }
            else
            {
                array_push($rooms,1);
            }
            echo json_encode($rooms);
        
        }

        function getAllRooms()
        {
            $db=new db();
            $conn=$db->MakeConn();
            $sql="SELECT * FROM `room` ";
            $rooms=array();
            $result = mysqli_query($conn, $sql);
            if ($result->num_rows > 0)
            {
                while($row = $result->fetch_assoc())
                {
                    array_push($rooms, $row);
                }
            }
            echo json_encode($rooms);

        }

        function deleteRoom($id)
        {
            $conn=$db->MakeConn();
            $sql="UPDATE room SET is_deleted = 1 WHERE id = $id";
            mysqli_query($conn,$sql);
        }
    
    }
?>
	