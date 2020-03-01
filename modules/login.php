<?php
@session_start();
require_once '../config/connection.php';

if (isset($_POST['loginBtn'])) {
  $email = $_POST['email'];
  $password = $_POST['password'];

  $errors = [];

  $rePassword = '/^[a-z0-9]{8,}$/';

  if ($email) {
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      array_push($errors, 'E-mail nije ispravan!');
    }
  } else {
    array_push($errors, 'Polje za email ne sme biti prazno!');
  }
  
  if ($password) {
    if (!preg_match($rePassword, $password)) {
      array_push($errors, 'Lozinka nije ispravna!');
    }
  } else {
    array_push($errors, 'Polje za lozinku ne sme biti prazno!');
  }

  if (count($errors) > 0) {
    $_SESSION['errors'] = $errors;
  } else {
    $scrPassword = md5($password);
    $sql = 'SELECT * 
    FROM user u INNER JOIN role r 
    ON u.roleID = r.roleID
    WHERE email = :email AND password = :password AND active = 1;';
    $stmt = $conn->prepare($sql);
    try {
      $stmt->execute([
       'email' => $email,
       'password' => $scrPassword
     ]);
      if ($stmt->rowCount() === 1) {
        $user = $stmt->fetch();
        $_SESSION['user'] = $user;
        $role = $_SESSION['user']->role;
        switch ($role) {
          case 'User':
          header('Location: ../index.php?page=naslovna');
          break;
          case 'Admin':
          header('Location: ../admin/admin.php?page=user');
          break;
        }
      } else {
        header('Location: ../index.php?page=login');
        $_SESSION['noUser'] = 'Ne postoji korisnik sa tim email-om/lozinkom. Pokušajte ponovo!';
      }
    } catch (PDOException $e) {
      echo $e->getMessage();
    }       
  }
}

