<?php
// A database class to connect to mysql database using PDO.
class Dbh
{
    private $db_server = "localhost";
    private $db_user = "hilbersw_3340project_db";
    private $db_password = "s7NDPZkFvzb3vWsBLcQr";
    private $db_name = "hilbersw_3340project_db";

    // Connect function that uses PDO to connect to mysql and catches any errors.
    protected function connect()
    {
        try {
            $pdo = new PDO("mysql:host=" . $this->db_server . ";dbname=" . $this->db_name, $this->db_user, $this->db_password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
        } catch (PDOException $e) {
            die("Connection failed:" . $e->getMessage());
        }
    }
}
