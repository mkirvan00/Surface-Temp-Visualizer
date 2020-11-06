<?php  


if (isset($_POST['submit'])) {

    require_once("tempConn.php");

    $dateOf = $_POST['dateOf'];

    $query = "SELECT LandAverageTemperature FROM temp_date WHERE dt = :dateOf";


try
    {
      $prepared_stmt = $dbo->prepare($query);
      $prepared_stmt->bindValue(':dateOf', $dateOf, PDO::PARAM_STR);
      $prepared_stmt->execute();
      $result = $prepared_stmt->fetchAll();

    }
    catch (PDOException $ex)
    { // Error in database processing.
      echo $sql . "<br>" . $error->getMessage(); // HTTP 500 - Internal Server Error
    }
}

?>

