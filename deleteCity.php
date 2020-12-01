<?php

if (isset($_POST['submit'])) {

    require_once("tempConn.php");

    $title = $_POST['title'];

    $query = "CALL delete_cities(:title)";
    
    try
    {
      $prepared_stmt = $dbo->prepare($query);
      $prepared_stmt->bindValue(':title', $title, PDO::PARAM_STR);
      $prepared_stmt->execute();

    }
    catch (PDOException $ex)
    { // Error in database processing.
      echo $sql . "<br>" . $error->getMessage(); // HTTP 500 - Internal Server Error
    }
}

?>

<html>
  <head>
    <link rel="stylesheet" type="text/css" href="project.css" />
  </head> 

  <body>
<!--     <div id="navbar">
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="getMovie01.php">Search Movie</a></li>
        <li><a href="insertMovie.php">Insert Movie</a></li>
        <li><a href="deleteMovie.php">Delete Movie</a></li>
      </ul>
    </div> -->
    
    <h1> Delete a City </h1>

    <form method="post">

      <label for="title">Name of city</label>
      <input type="text" name="title" id="title">
      
      <input type="submit" name="submit" value="Delete City">
    </form>


    
  </body>
</html>


