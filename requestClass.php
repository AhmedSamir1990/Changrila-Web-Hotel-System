<?php

include_once "My_DBDirect.php";
if(isset($_POST['method']) && $_POST['method']== 'requesting' )
{
  $request = new request();
  $request->name=$_POST['name'];
  $request->extra_bed=$_POST['extra_bed'];
  $request->sea_view=$_POST['sea_view'];
  $request->pool_view=$_POST['pool_view'];
  $request->room_breakfast=$_POST['room_breakfast'];
  $request->ground_floor_room=$_POST['ground_floor_room'];
  $request->additional_request=$_POST['additional_request'];
  $request->alchol=$_POST['alchol'];
  //echo("alaaaaaaaa");
        
$request->insertreq($request);
}
class request
{
    public $name;
    public $extra_bed;

    public $sea_view;

    public $pool_view;

    public $room_breakfast;

    public $alchol;

    public $ground_floor_room;

    public $additional_request;

   
   

    static function insertreq($request)
    {   
        
        $conn = db::MakeConn();
        $sql="INSERT into request (name,extra_bed,sea_view,pool_view,room_breakfast,alchol,
        ground_floor_room,additional_request,confirmed) VALUES
        ('$request->name','$request->extra_bed',
        '$request->sea_view','$request->pool_view',
        '$request->room_breakfast','$request->alchol','$request->ground_floor_room',
         '$request->additional_request',0)";
         
        mysqli_query($conn,$sql);
    }

  

   



}