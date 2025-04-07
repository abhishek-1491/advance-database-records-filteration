<?php
session_start();

$conn = new mysqli("localhost", "root", "", "poll");

if ($conn->connect_error) {
    die("connection failed:" . $conn->connect_error);
}

// register

if (isset($_POST['register'])) {
    $user_id = uniqid("user_");
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "INSERT INTO users(user_id,name,email,password) VALUES ('$user_id','$name','$email','$password')";

    if ($conn->query($sql) === TRUE) {
        echo "Registration successful";
        header('location:index.php');
    } else {
        echo "Error : " . $conn->error;
    }
}

//login 

if (isset($_POST['login'])) {
    $uname = $_POST['uname'];
    $password = $_POST['password'];

    echo $uname, $password;

    $stmt = $conn->prepare("SELECT * FROM users WHERE email = ?");
    $stmt->bind_param("s", $uname);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();

    // print_r($user) ;

    if ($user && ($password == $user['password'])) {
        $_SESSION['user'] = $user;
        echo "login successful";
        header('location:index.php');
    } else {
        echo "Error : " . $conn->error;
    }
}

//poll
if (isset($_POST['poll'])) {
    $pollId = uniqid("poll_");
    $polltitle = $_POST['title'];
    $pollDetails = isset($_POST["option"]) ? implode(", ", $_POST["option"]) : "";


    $sql = "INSERT INTO polldetails(poll_id,poll_name,poll_details) VALUES 
    ('$pollId','$polltitle','$pollDetails')";

    if ($conn->query($sql) === TRUE) {
        echo "poll added successful";
        // header('location:index.php');

        $stmt = $conn->prepare("SELECT * FROM polldetails WHERE poll_id =?");
        $stmt->bind_param("s", $pollId);
        $stmt->execute();
        $result = $stmt->get_result();
        $poll = $result->fetch_assoc();

        print_r($row);

        $_SESSION['currentPoll'] = $poll;
        // if($result->num_rows > 0){
        //     while($row = $result->fetch_assoc()){
        //         $polls[] = $row;
        //         print_r(($row));
        //         echo "<br>";
        //     }
        // }
        header("location:index.php");

    } else {
        echo "Error : " . $conn->error;
    }
}



?>