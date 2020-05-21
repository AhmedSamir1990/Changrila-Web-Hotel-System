<?php

    include_once "UserClass.php";
    $FullName=$_POST["FullName"];
    $SSN=$_POST["SSN"];
    $Email=$_POST["Email"];
    $Mobile=$_POST["Mobile"];
    $DOB=$_POST["DOB"];
    $Password=$_POST["Password"];
    // $img=$_FILES["image"];
    //$image = $_FILES['image']['tmp_name'];
    //$img = file_get_contents($image);
    
    $UseObject=User::InsertInDB_static($FullName,$SSN,$Email,$DOB,$Password,$Mobile);
    header("Location: login.html");
    
?>