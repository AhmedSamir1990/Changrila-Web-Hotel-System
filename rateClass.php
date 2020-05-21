<?php

include_once "My_DBDirect.php";
if(isset($_POST['method']) && $_POST['method']== 'rating' )
{
  $rate = new rate();
  $rate->guestname=$_POST['rate-guest-name'];
  $rate->roomno=$_POST['room'];
  $rate->Doc=$_POST['doc'];
  $rate->for=$_POST['front'];
  $rate->restr=$_POST['rest'];
  $rate->roomr=$_POST['ser'];
  $rate->cleanr=$_POST['app'];
  $rate->servicer=$_POST['clean'];
  $rate->staffr=$_POST['serv'];
  $rate->attituder=$_POST['att'];
  $rate->expr=$_POST['exp'];
  $rate->finalc=$_POST['finalc'];
  $rate->insertrate($rate);
}
else if(isset($_POST['method']) && $_POST['method']== 'getRate' )
{
  $rate = new rate();
  $rate->avgrate();

  
}

class rate
{
    public $guestname;
    public $roomno;
    public $Doc;
    public $for;
    public $restr;
    public $roomr;
    public $cleanr;
    public $servicer;
    public $staffr;
    public $attituder;
    public $expr;
    public $finalc;
   

    static function insertrate($rate)
    {   
        //echo 'dakhal backend';
        $conn = db::MakeConn();

        $sql="insert into rate(guestname,roomno,Doc,`for`
        ,restr,roomr,cleanr,servicer,staffr,
         attituder, expr,finalc) 
         values('$rate->guestname',$rate->roomno,'$rate->Doc',$rate->for,$rate->restr,$rate->roomr,$rate->cleanr,$rate->servicer,$rate->staffr,
         $rate->attituder,$rate->expr,'$rate->finalc')";
        echo $sql;
        mysqli_query($conn,$sql);
    }

    public function avgrate()
    { 
      $conn = db::MakeConn();
      $sql=" SELECT AVG(expr) FROM rate";
      
      $result = mysqli_query($conn, $sql);
      while($row = mysqli_fetch_array($result))
      { 
        echo $row['AVG(expr)'];
        //return 
      }

    }

  public function printrate($rate)
  { 
    $conn = db::MakeConn();
    $sql=" SELECT * FROM rate";
    mysqli_query($conn,$sql);
  }
  

   



}