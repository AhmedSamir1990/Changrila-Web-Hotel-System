<?php

include_once "UserClass.php";
$Email=$_REQUEST["Email"];
$Password=$_REQUEST["Password"];
$UseObject=User::login($Email,$Password);
if($UseObject!=NULL)
{
    session_start();
    $_SESSION["UserID"]=$UseObject;
    $conn = db::MakeConn();
    if($UseObject==1)
    {
        header('Location:adminView.html');
    }
    else if($UseObject==2)
    {
        header('Location:guestView.html');
    }
    else if($UseObject==3)
    {
        header('Location:recView.html');
    }
    $x=(int)$UseObject;
    for($i=0;$i<3;$i++)
    {  $sql="SELECT pages.FreindlyName , pages.Linkaddress from pages 
    where pages.ID=(SELECT usertype_pages.PageID FROM `usertype_pages`
     where usertype_pages.UserTypeID = $x AND usertype_pages.ordervalue=$i)";
     $result = mysqli_query($conn,$sql);
     $row = $result->fetch_assoc();
        echo '<br> <a href="../' . $row['Linkaddress'] . '"> '. $row['FreindlyName'] .'</a>';  
 
   
   }
   
}

//Handle Wrong Credentials
else
{
    echo("Wrong credentials please go back and check your credentials");
}
?>