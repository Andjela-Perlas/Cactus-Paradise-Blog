<?php
$sql = 'SELECT * 
FROM question q INNER JOIN suggestion s 
ON q.questionID = s.questionID 
WHERE q.questionID = 1;
';
try {
  $data = executeQuery($sql);
} catch(PDOException $e) {
 echo $e->getMessage();
}
?>

<div class="col-md-4">
  <div class="card my-4 shadow p-3 mb-4 bg-white rounded">
    <div class="card-header mx-4 my-4 border-bottom-0 py-2 bg-dark">
      <h5 class="text-center mr-1 text-white lead">Zanimljivosti</h5>
    </div>
    <div class="card-body">
      <div class="row">
        <ul class="list-unstyled mb-0">
         <li><i class="fas fa-certificate"></i> U zavisnosti od vrste, kaktusi mogu da žive od 15 pa do čak 300 godina.</li><br>
         <li><i class="fas fa-certificate"></i> Neki kaktusi, kao što je recimo „Pejote“ (peyote), proizvode jak halucinogen meskalin.</li><br>
         <li><i class="fas fa-certificate"></i> Opuntia humifusa ili polegla opuncija može da izdrži temperature do minus 25 stepeni. </li>
       </ul>
     </div>
   </div>
 </div>

 <div class="card my-4 shadow p-3 mb-4 bg-white rounded">
  <div class="card-header mx-4 my-4 border-bottom-0 py-2 bg-dark">
    <h5 class="text-center mr-1 text-white lead">Dekoracija meseca</h5>
  </div>
  <div class="card-body">
    <div class="row">
      <ul class="list-unstyled mb-0">
       <li><img  class="img-size" src="assets/img/cactusdecor.jpg" alt="cactusdecor"></li>
     </ul>
   </div>
 </div>
</div>

<?php if(userLoggedIn()) : ?>

  <div class="card my-4 shadow p-3 mb-5 bg-white rounded">
    <div class="card-header mx-2 my-3 border-bottom-0 py-2 bg-dark">
      <h5 class="text-center mr-1 text-white lead">Anketa</h5>
    </div>
    <div class="card-body">
      <p class="lead"><?= $data[0]->question ?></p>
      <input type="hidden" id="questionsID" value="<?= $data[0]->questionID ?>">
      <input type="hidden" id="userID" value="<?= $_SESSION['user']->userID ?>">
      <?php  foreach($data as $suggestion) : ?>
        <?php include "modules/vote.php"; ?>
        <div class="form-group">

          <?php if(!$voted) : ?> 
            <input type="radio"  name="poll" value="<?= $suggestion->suggestionID ?>" />
          <?php endif; ?> 
          <span class="font-weight-light"><?= $suggestion->suggestion ?></span>
          <?php if($voted) : ?>
            
            <span class="font-weight-light votedRound">
              <?= round($percentage, 2)."%" ?>
            </span>
          <?php endif; ?> 
          
        </div>
      <?php endforeach; ?>
      <?php if(!$voted) : ?>
       <button id="pollBtn" class="btn btn-pink text-white">Glasaj</button>
     <?php endif; ?>
     <?php if($voted) : ?>
       <p class="lead">
         Uspešno ste glasali!
       </p>
     </div>
   <?php endif; ?>
   
   <small id="hint" class="text-danger"></small>
 </div>
<?php endif; ?>
</div>
</div>
</div>
















