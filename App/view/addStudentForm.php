<form id="form" role="form" method="post" action="controller/addStudent.php">
    <div class="form-group">
        <label>code</label>
        <input name="code" id="code" type="text" class="form-control" placeholder="code">
    </div>
    <div class="form-group">
        <label>nom</label>
        <input name="nom" id="nom" type="text" class="form-control" placeholder="nom">
    </div>
    <div class="form-group">
        <label>prenom</label>
        <input name="prenom" id="prenom" type="text" class="form-control" placeholder="prenom">
    </div>
    <div class="form-group">
        <label>sexe</label>
        <select name="sexe" id="sexe">
            <option value="masculin">masculing</option>
            <option value="feminin">feminin</option>
        </select>
    </div>
    <div class="form-group">
        <label>Date de naissance</label>
        <input name="dateNaissance" id="dateNaissance" type="datetime" class="form-control" placeholder="">
    </div>
    <div class="form-group">
        <label>email</label>
        <input name="email" id="email" type="text" class="form-control" placeholder="">
    </div>
    <div class="form-group">
        <label>vacation</label>
        <input name="vacation" id="vacation" type="text" class="form-control" placeholder="vacation">
    </div>
    <div class="form-group">
        <label>classe</label>
        <input name="classe" id="classe" type="text" class="form-control" placeholder="classe">
    </div>
</form>
